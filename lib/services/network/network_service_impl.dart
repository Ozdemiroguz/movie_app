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
import 'network_info.dart';
import 'network_service.dart';

@LazySingleton(as: NetworkService)
final class NetworkServiceImpl implements NetworkService {
  final LocaleResourcesService localeResourcesService;
  final NetworkInfo networkInfo;
  final Dio _dio;

  NetworkServiceImpl(
    this._dio, {
    required this.localeResourcesService,
    required this.networkInfo,
  });

  @override
  void setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  void setHeader(String key, String value) {
    _dio.options.headers[key] = value;
  }

  @override
  void setHeaders(Map<String, String> headers) {
    _dio.options.headers.addAll(headers);
  }

  @override
  void setToken(String token) {
    _dio.options.headers["Authorization"] = 'Bearer $token';
  }

  @override
  void clearToken() {
    _dio.options.headers.remove("Authorization");
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async =>
      _tryCatch(() => _dio.get(url, queryParameters: queryParameters));

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
  }) {
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
  }) =>
      _tryCatch(() => _dio.put(url, data: data));

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  }) =>
      _tryCatch(() => _dio.delete(url, data: data));

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> patch(
    String url, {
    dynamic data,
  }) =>
      _tryCatch(() => _dio.patch(url, data: data));

  Future<Either<Failure, Response<Map<String, dynamic>>>> _tryCatch(
    AsyncValueGetter<Response<Map<String, dynamic>>> operation,
  ) async {
    // 1. İnternet bağlantısını kontrol et
    if (!await networkInfo.isConnected) {
      return left(Failure.noConnection(noConnectionMessage));
    }

    try {
      // 2. Ağ isteğini gerçekleştir
      final response = await operation();

      // 3. Başarılı yanıtı işle
      // API'nizin başarılı yanıt içinde bir 'code' alanı döndürdüğünü varsayıyoruz.
      // Eğer bu her zaman geçerli değilse, bu kontrol daha esnek hale getirilebilir.
      final responseData = response.data;
      if (responseData != null && responseData.containsKey('response')) {
        final code = responseData['response']['code'];
        final message = responseData['response']['message'] as String? ??
            unknownErrorMessage;

        // Başarılı ama mantıksal hata içeren durumlar (örn: 200 OK ama "veri bulunamadı")
        if (code != 200 && code != 201) {
          // Token geçersiz (Unauthorized) ise özel işlem yap.
          if (code == 401) {
            unawaited(localeResourcesService.clearSecureStorage());
            clearToken();
            unawaited(getIt<AppRouter>().replaceAll([const LoginRoute()]));
          }
          return left(Failure.responseError(message));
        }
      }

      // Her şey yolundaysa, başarılı yanıtı döndür.
      return right(response);
    } on DioException catch (e) {
      // 4. Dio tarafından fırlatılan hataları yakala
      return left(_handleDioException(e));
    } on TimeoutException {
      // 5. Zaman aşımı hatasını yakala
      return left(Failure.connectionTimedOut(connectionTimedOutMessage));
    } catch (e) {
      // 6. Diğer tüm beklenmedik hataları yakala
      return left(Failure.unknownError(e.toString()));
    }
  }

  /// DioException'ları anlamlı Failure objelerine dönüştüren yardımcı metod.
  Failure _handleDioException(DioException e) {
    // İnternet bağlantısı ile ilgili hatalar
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return Failure.connectionTimedOut(connectionTimedOutMessage);
    }

    if (e.type == DioExceptionType.connectionError) {
      return Failure.noConnection(noConnectionMessage);
    }

    // Sunucudan bir hata yanıtı geldiyse
    if (e.response?.data != null) {
      String errorMessage = unknownErrorMessage;

      // GÜVENLİ TİP KONTROLÜ
      if (e.response!.data is Map<String, dynamic>) {
        // Yanıt bir JSON nesnesi ise
        final errorData = e.response!.data as Map<String, dynamic>;
        errorMessage = errorData["response"]?["message"]?.toString() ??
            errorData["message"]?.toString() ?? // Farklı formatları da dene
            errorMessage;
      } else {
        // Yanıt bir JSON değilse (örn: düz metin), olduğu gibi kullan.
        errorMessage = e.response!.data.toString();
        // Uzun HTML hata sayfalarını kırpmak için
        if (errorMessage.length > 200) {
          errorMessage = errorMessage.substring(0, 200);
        }
      }
      return Failure.responseError(errorMessage);
    }

    // Diğer Dio hataları için (örn: cancel, bad certificate)
    return Failure.unknownError(e.message ?? "A Dio error occurred");
  }

  @override
  String getToken() {
    return _dio.options.headers["Authorization"] as String;
  }

  @override
  Future<Response<List<dynamic>>> getList(String url) async {
    final dio = Dio();

    return await dio.get(url);
  }
}
