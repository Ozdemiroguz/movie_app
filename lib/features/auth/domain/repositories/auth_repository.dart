import 'package:fpdart/fpdart.dart';
import '../../../../core/models/failure/failure.dart';

/// Defines the contract for authentication-related operations.
///
/// This interface abstracts the data source, allowing the application's
/// business logic to be independent of the specific implementation (e.g., REST API, Firebase).
abstract interface class AuthRepository {
  /// Checks if a user has a valid, non-expired session.
  ///
  /// This method is side-effect-free; it only reads the token status and
  /// does not modify any state. It is safe to use in the UI layer for
  /// conditional rendering (e.g., showing a "Login" or "Logout" button).
  ///
  /// Returns `true` if a valid token exists, `false` otherwise.
  Future<bool> isUserAuthenticated();

  /// Attempts to restore a user session at application startup.
  ///
  /// Reads the token from local storage. If the token is valid, it configures
  /// services (like NetworkService) to use it. If the token is expired,
  /// it clears the session data.
  Future<void> tryToRestoreSession();

  /// Authenticates a user with their email and password.
  ///
  /// On success, it persists the session data (e.g., token).
  ///
  /// Returns `none()` on success, or `some(Failure)` on error.
  Future<Option<Failure>> login({
    required String email,
    required String password,
  });

  /// Creates a new user account.
  ///
  /// On success, it authenticates the user and persists the session data.
  ///
  /// Returns `none()` on success, or `some(Failure)` on error.
  Future<Option<Failure>> signUp({
    required String email,
    required String password,
    required String name,
  });

  /// Clears the current user's session.
  ///
  /// Removes all authentication data from local storage and services.
  ///
  /// Returns `none()` on success, or `some(Failure)` if clearing fails.
  Future<Option<Failure>> logout();
}
