// lib/features/auth/data/repositories/auth_repository_impl.dart

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../../constants/failure_message.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../services/locale/locale_resources_service.dart';
import '../../../../services/logger/logger_service.dart';
import '../../../../services/network/network_service.dart';
import '../../domain/datasources/auth_remote_data_source.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/auth_response_dto.dart';

@LazySingleton(as: AuthRepository)
final class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final LocaleResourcesService _localeResourcesService;
  final NetworkService _networkService;
  final LoggerService _logger;

  const AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required LocaleResourcesService localeResourcesService,
    required NetworkService networkService,
    required LoggerService logger,
  })  : _remoteDataSource = remoteDataSource,
        _localeResourcesService = localeResourcesService,
        _networkService = networkService,
        _logger = logger;

  @override
  Future<Option<Failure>> login({
    required String email,
    required String password,
  }) async {
    final result =
        await _remoteDataSource.login(email: email, password: password);

    return await result.fold(
      (failure) {
        _logger.e('Login failed for $email.', error: failure);
        return some(failure);
      },
      (authResponse) async {
        await _persistAuthData(authResponse);
        return none();
      },
    );
  }

  @override
  Future<Option<Failure>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final result = await _remoteDataSource.signUp(
      email: email,
      password: password,
      name: name,
    );

    return await result.fold(
      (failure) {
        _logger.e('Sign up failed for $email.', error: failure);
        return some(failure);
      },
      (authResponse) async {
        await _persistAuthData(authResponse);
        return none();
      },
    );
  }

  @override
  Future<bool> isUserAuthenticated() async {
    final tokenOption = await _localeResourcesService.getAccessToken();
    _logger.i('Checking user authentication status.');
    return tokenOption.fold(
      () {
        _logger.i('No token found, user is not authenticated.');
        return false;
      },
      (token) {
        final isExpired = JwtDecoder.isExpired(token);
        _logger.i('Token found. Expired: $isExpired');
        return !isExpired;
      },
    );
  }

  @override
  Future<void> tryToRestoreSession() async {
    _logger.i('Attempting to restore session.');
    final tokenOption = await _localeResourcesService.getAccessToken();

    await tokenOption.fold(
      () async => _logger.i('No token found, no session to restore.'),
      (token) async {
        if (JwtDecoder.isExpired(token)) {
          _logger.w('Token has expired, logging out.');
          await logout();
        } else {
          _logger.i('Token is valid, restoring session.');
          _networkService.setToken(token);
        }
      },
    );
  }

  @override
  Future<Option<Failure>> logout() async {
    _logger.i('Logging out user.');
    try {
      await _localeResourcesService.clearSecureStorage();
      _networkService.clearToken();
      _logger.i('User session cleared successfully.');
      return none();
    } catch (e, s) {
      _logger.e(
        'Could not clear session.',
        error: e,
        stackTrace: s,
      );
      return some(Failure.unknownError(sessionClearErrorMessage));
    }
  }

  /// A helper method to persist token and user data to the respective services.
  Future<void> _persistAuthData(AuthResponseDto authData) async {
    _logger.i('Persisting auth data for user ${authData.userId}');
    _networkService.setToken(authData.token);
    await _localeResourcesService.setAccessToken(authData.token);
    if (authData.userId != null) {
      await _localeResourcesService.setUserId(authData.userId!);
    }
    _logger.i('Auth data persisted successfully.');
  }
}
