// lib/features/auth/domain/datasources/auth_remote_data_source.dart

import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../../data/models/auth_response_dto.dart';

/// Abstract interface for authentication remote data source.
///
/// This contract defines the methods for user authentication operations,
/// such as logging in and signing up.
abstract class AuthRemoteDataSource {
  /// Attempts to log in a user with the given [email] and [password].
  ///
  /// Returns a [Future] that completes with an [Either] containing
  /// a [Failure] on error, or an [AuthResponseDto] on success.
  Future<Either<Failure, AuthResponseDto>> login({
    required String email,
    required String password,
  });

  /// Attempts to sign up a new user with the given [email], [password], and [name].
  ///
  /// Returns a [Future] that completes with an [Either] containing
  /// a [Failure] on error, or an [AuthResponseDto] on success.
  Future<Either<Failure, AuthResponseDto>> signUp({
    required String email,
    required String password,
    required String name,
  });
}
