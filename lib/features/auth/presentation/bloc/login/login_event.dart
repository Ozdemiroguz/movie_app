import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = EmailChanged;

  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;

  const factory LoginEvent.validationVisibilityChanged() =
      ValidationVisibilityChanged;

  const factory LoginEvent.loginSubmitted() = LoginSubmitted;
}
