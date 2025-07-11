// lib/features/auth/data/datasources/auth_remote_data_source_impl.dart

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/api_endpoints.dart';
import '../../../../constants/failure_message.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../services/logger/logger_service.dart';
import '../../../../services/network/network_service.dart';
import '../../domain/datasources/auth_remote_data_source.dart';
import '../models/auth_response_dto.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final NetworkService _networkService;
  final LoggerService _logger;

  const AuthRemoteDataSourceImpl(this._networkService, this._logger);

  @override
  Future<Either<Failure, AuthResponseDto>> login({
    required String email,
    required String password,
  }) async {
    _logger.i('Attempting to log in user: $email');
    final result = await _networkService.post(
      Endpoints.login,
      data: {"email": email, "password": password},
    );

    return result.fold(
      (failure) {
        _logger.e('Login failed for user: $email', error: failure);
        return left(failure);
      },
      (response) {
        _logger.i('Login successful for user: $email');
        return _parseAuthResponse(response.data);
      },
    );
  }

  @override
  Future<Either<Failure, AuthResponseDto>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    _logger.i('Attempting to sign up user: $email');
    final result = await _networkService.post(
      Endpoints.register,
      data: {"email": email, "name": name, "password": password},
    );

    return result.fold(
      (failure) {
        _logger.e('Sign up failed for user: $email', error: failure);
        return left(failure);
      },
      (response) {
        _logger.i('Sign up successful for user: $email');
        return _parseAuthResponse(response.data);
      },
    );
  }

  Either<Failure, AuthResponseDto> _parseAuthResponse(
      Map<String, dynamic>? responseData) {
    try {
      final data = responseData?['data'];
      if (data is! Map<String, dynamic>) {
        return left(Failure.unknownError(unknownErrorMessage));
      }

      final token = data['token'] as String?;
      if (token == null || token.isEmpty) {
        return left(Failure.unknownError(tokenMissingErrorMessage));
      }

      final userId = data['_id'] as String?;

      return right(AuthResponseDto(token: token, userId: userId));
    } catch (e, s) {
      _logger.e(
        'Failed to parse auth response.',
        error: e,
        stackTrace: s,
      );
      return left(Failure.unknownError(authResponseParseErrorMessage));
    }
  }
}
