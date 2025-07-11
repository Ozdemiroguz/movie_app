// lib/features/auth/presentation/bloc/signup/signup_bloc.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/validation_error_visibility/validation_error_visibility.dart';
import '../../../../../services/logger/logger_service.dart';
import '../../../../../utils/validators.dart';
import '../../../domain/repositories/auth_repository.dart';
import 'signup_event.dart';
import 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepository _authRepository;
  final LoggerService _logger;

  SignupBloc({
    required AuthRepository authRepository,
    required LoggerService logger,
  })  : _authRepository = authRepository,
        _logger = logger,
        super(SignupState.initial()) {
    on<NameChanged>(_onNameChanged);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<ValidationVisibilityChanged>(_onValidationVisibilityChanged);
    on<SignupSubmitted>(_onSignupSubmitted);
  }

  void _onNameChanged(NameChanged event, Emitter<SignupState> emit) {
    _logger.i('Signup name changed.');
    emit(state.copyWith(
      name: event.name,
      nameFailure: validateEmptiness(event.name),
      singleTimeEvent: null,
    ));
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignupState> emit) {
    _logger.i('Signup email changed.');
    emit(state.copyWith(
      email: event.email,
      emailFailure: validateEmailAddress(event.email),
      singleTimeEvent: null,
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    _logger.i('Signup password changed.');
    emit(state.copyWith(
      password: event.password,
      passwordFailure: validatePassword(event.password),
      confirmPasswordFailure: validateConfirmPassword(
        event.password,
        state.confirmPassword,
        "passwords_do_not_match".tr(),
      ),
      singleTimeEvent: null,
    ));
  }

  void _onConfirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<SignupState> emit) {
    _logger.i('Signup confirm password changed.');
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      confirmPasswordFailure: validateConfirmPassword(
        state.password,
        event.confirmPassword,
        "passwords_do_not_match".tr(),
      ),
      singleTimeEvent: null,
    ));
  }

  void _onValidationVisibilityChanged(
      ValidationVisibilityChanged event, Emitter<SignupState> emit) {
    _logger.i('Signup validation visibility changed.');
    emit(state.copyWith(
      validationErrorVisibility: const ValidationErrorVisibility.show(),
      singleTimeEvent: null,
    ));
  }

  Future<void> _onSignupSubmitted(
    SignupSubmitted event,
    Emitter<SignupState> emit,
  ) async {
    _logger.i('Signup submitted.');
    emit(state.copyWith(
      validationErrorVisibility: const ValidationErrorVisibility.show(),
      singleTimeEvent: null,
    ));

    if (!state.isValid) {
      _logger.w('Signup form is not valid.');
      return;
    }

    _logger.i('Signup form is valid, proceeding with signup.');
    emit(state.copyWith(isLoading: true));

    final result = await _authRepository.signUp(
      name: state.name,
      email: state.email,
      password: state.password,
    );

    result.fold(
      () {
        _logger.i('Signup successful, navigating to profile update.');
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent:
              const SignupSingleTimeEvent.navigateToProfileUpdate(),
        ));
      },
      (failure) {
        _logger.e('Signup failed.', error: failure);
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent:
              SignupSingleTimeEvent.showErrorDialog(failure.message),
        ));
      },
    );
  }
}
