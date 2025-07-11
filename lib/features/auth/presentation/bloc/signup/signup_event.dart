import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.freezed.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged(String name) = NameChanged;

  const factory SignupEvent.emailChanged(String email) = EmailChanged;

  const factory SignupEvent.passwordChanged(String password) = PasswordChanged;

  const factory SignupEvent.confirmPasswordChanged(String confirmPassword) =
      ConfirmPasswordChanged;

  const factory SignupEvent.validationVisibilityChanged() =
      ValidationVisibilityChanged;

  const factory SignupEvent.signupSubmitted() = SignupSubmitted;
}
