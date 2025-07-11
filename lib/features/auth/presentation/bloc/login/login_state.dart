import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../../../core/models/validation_error_visibility/validation_error_visibility.dart';
import '../../../../../core/models/value_failure/value_failure.dart';
import '../../../../../utils/validators.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    required bool isLoading,
    required String email,
    required String password,
    required Option<Failure> failure,
    required Option<ValueFailure> emailFailure,
    required Option<ValueFailure> passwordFailure,
    LoginSingleTimeEvent? singleTimeEvent,
    required ValidationErrorVisibility validationErrorVisibility,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        isLoading: false,
        email: "",
        password: "",
        failure: none(),
        emailFailure: validateEmailAddress(""),
        passwordFailure: validatePassword(""),
        singleTimeEvent: null,
        validationErrorVisibility: const ValidationErrorVisibility.hide(),
      );

  const LoginState._();

  bool get isValid => emailFailure.isNone() && passwordFailure.isNone();
}

@freezed
abstract class LoginSingleTimeEvent with _$LoginSingleTimeEvent {
  const factory LoginSingleTimeEvent.navigateToHome() = _NavigateToHome;
  const factory LoginSingleTimeEvent.showErrorDialog(String message) =
      _ShowErrorDialog;
}
