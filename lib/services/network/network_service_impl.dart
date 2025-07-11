import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:test_case/core/injections/locator.dart';
import 'package:test_case/router/router.dart';

import '../../constants/failure_message.dart';
import '../../core/models/failure/failure.dart';
import '../locale/locale_resources_service.dart';
import '../logger/logger_service.dart';
import 'network_info.dart';
import 'network_service.dart';

@LazySingleton(as: NetworkService)
final class NetworkServiceImpl implements NetworkService {
  final LocaleResourcesService localeResourcesService;
  final NetworkInfo networkInfo;
  final Dio _dio;
  final LoggerService _logger;

  NetworkServiceImpl(
    this._dio, {
    required this.localeResourcesService,
    required this.networkInfo,
    required LoggerService logger,
  }) : _logger = logger {
    _logger.i('NetworkServiceImpl initialized.');
  }

  @override
  void setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
    _logger.d('Base URL set to: $baseUrl');
  }

  @override
  void setHeader(String key, String value) {
    _dio.options.headers[key] = value;
    _logger.d('Header set: $key = $value');
  }

  @override
  void setHeaders(Map<String, String> headers) {
    _dio.options.headers.addAll(headers);
    _logger.d('Headers set: $headers');
  }

  @override
  void setToken(String token) {
    _dio.options.headers["Authorization"] = 'Bearer $token';
    _logger.d('Authorization token set.');
  }

  @override
  void clearToken() {
    _dio.options.headers.remove("Authorization");
    _logger.d('Authorization token cleared.');
  }

  @override
  String getToken() {
    final token = _dio.options.headers["Authorization"];
    _logger.d('Retrieved token: $token');
    return token as String;
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    _logger.i('GET request to: $url with query: $queryParameters');
    return _tryCatch(() => _dio.get(url, queryParameters: queryParameters));
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
  }) {
    _logger.i('POST request to: $url with data: $data');
    return _tryCatch(
      () async => _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: Map.of(_dio.options.headers)..addAll(optionalHeaders ?? {}),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> put(
    String url, {
    dynamic data,
  }) {
    _logger.i('PUT request to: $url with data: $data');
    return _tryCatch(() => _dio.put(url, data: data));
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  }) {
    _logger.i('DELETE request to: $url with data: $data');
    return _tryCatch(() => _dio.delete(url, data: data));
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> patch(
    String url, {
    dynamic data,
  }) {
    _logger.i('PATCH request to: $url with data: $data');
    return _tryCatch(() => _dio.patch(url, data: data));
  }

  Future<Either<Failure, Response<Map<String, dynamic>>>> _tryCatch(
    AsyncValueGetter<Response<Map<String, dynamic>>> operation,
  ) async {
    _logger.d('Entering _tryCatch for network operation.');
    if (!await networkInfo.isConnected) {
      _logger.w('No internet connection.');
      return left(Failure.noConnection(noConnectionMessage));
    }

    try {
      final response = await operation();
      _logger.d(
          'Network operation successful. Status Code: ${response.statusCode}');
      final responseData = response.data;
      if (responseData != null && responseData.containsKey('response')) {
        final code = responseData['response']['code'];
        final message = responseData['response']['message'] as String? ??
            unknownErrorMessage;

        if (code != 200 && code != 201) {
          _logger.w(
              'API response indicates a logical error. Code: $code, Message: $message');
          if (code == 401) {
            _logger.e(
                'Unauthorized: Token invalid or expired. Navigating to login.');
            unawaited(localeResourcesService.clearSecureStorage());
            clearToken();
            unawaited(getIt<AppRouter>().replaceAll([const LoginRoute()]));
          }
          return left(Failure.responseError(message));
        }
      }
      _logger.i('Network operation completed successfully.');
      return right(response);
    } on DioException catch (e, s) {
      _logger.e('DioException caught during network operation.',
          error: e, stackTrace: s);
      return left(_handleDioException(e));
    } on TimeoutException catch (e, s) {
      _logger.e('Connection timed out.', error: e, stackTrace: s);
      return left(Failure.connectionTimedOut(connectionTimedOutMessage));
    } catch (e, s) {
      _logger.e('Unknown error during network operation.',
          error: e, stackTrace: s);
      return left(Failure.unknownError(e.toString()));
    }
  }

  Failure _handleDioException(DioException e) {
    _logger.d('Handling DioException: ${e.type}');
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      _logger.w('Connection timeout occurred.');
      return Failure.connectionTimedOut(connectionTimedOutMessage);
    }

    if (e.type == DioExceptionType.connectionError) {
      _logger.w('Connection error occurred.');
      return Failure.noConnection(noConnectionMessage);
    }

    if (e.response?.data != null) {
      String errorMessage = unknownErrorMessage;
      _logger.d('Received error response data: ${e.response!.data}');
      if (e.response!.data is Map<String, dynamic>) {
        final errorData = e.response!.data as Map<String, dynamic>;
        errorMessage = errorData["response"]?["message"]?.toString() ??
            errorData["message"]?.toString() ??
            errorMessage;
        _logger.w('Parsed error message from response: $errorMessage');
      } else {
        errorMessage = e.response!.data.toString();
        if (errorMessage.length > 200) {
          errorMessage = errorMessage.substring(0, 200);
        }
        _logger.w('Error response is not JSON. Message: $errorMessage');
      }
      return Failure.responseError(errorMessage);
    }

    _logger.e('Unhandled Dio error type or no response data.', error: e);
    return Failure.unknownError(e.message ?? "A Dio error occurred");
  }

  @override
  Future<Response<List<dynamic>>> getList(String url) async {
    _logger.i('GET LIST request to: $url');
    final dio = Dio();
    try {
      final response = await dio.get<List<dynamic>>(url,
          options: Options(responseType: ResponseType.json));
      _logger.i(
          'GET LIST request successful. Status Code: ${response.statusCode}');
      return response;
    } on DioException catch (e, s) {
      _logger.e('GET LIST request failed.', error: e, stackTrace: s);
      rethrow;
    } catch (e, s) {
      _logger.e('Unhandled error in GET LIST request.',
          error: e, stackTrace: s);
      rethrow;
    }
  }
}
