// lib/features/auth/presentation/bloc/signup/signup_state.dart

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/validation_error_visibility/validation_error_visibility.dart';
import '../../../../../core/models/value_failure/value_failure.dart';
import '../../../../../utils/validators.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignupState with _$SignupState {
  factory SignupState({
    required bool isLoading,
    required String name,
    required Option<ValueFailure> nameFailure,
    required String email,
    required String password,
    required String confirmPassword,
    required Option<ValueFailure> emailFailure,
    required Option<ValueFailure> passwordFailure,
    required Option<ValueFailure> confirmPasswordFailure,
    required ValidationErrorVisibility validationErrorVisibility,
    SignupSingleTimeEvent? singleTimeEvent,
  }) = _SignupState;

  factory SignupState.initial() => SignupState(
        isLoading: false,
        name: "",
        email: "",
        password: "",
        confirmPassword: "",
        emailFailure: validateEmailAddress(""),
        passwordFailure: validatePassword(""),
        confirmPasswordFailure: validateConfirmPassword("", "", null),
        nameFailure: validateEmptiness(""),
        validationErrorVisibility: const ValidationErrorVisibility.hide(),
        singleTimeEvent: null,
      );

  const SignupState._();

  bool get isValid =>
      name.isNotEmpty &&
      emailFailure.isNone() &&
      passwordFailure.isNone() &&
      confirmPasswordFailure.isNone();
}

@freezed
abstract class SignupSingleTimeEvent with _$SignupSingleTimeEvent {
  const factory SignupSingleTimeEvent.navigateToProfileUpdate() =
      _NavigateToProfileUpdate;
  const factory SignupSingleTimeEvent.showErrorDialog(String message) =
      _ShowErrorDialog;
}
