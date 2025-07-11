// lib/features/auth/presentation/bloc/login_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/validation_error_visibility/validation_error_visibility.dart';
import '../../../../../services/logger/logger_service.dart';
import '../../../../../utils/validators.dart';
import '../../../domain/repositories/auth_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  final LoggerService _logger;

  LoginBloc({
    required AuthRepository authRepository,
    required LoggerService logger,
  })  : _authRepository = authRepository,
        _logger = logger,
        super(LoginState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<ValidationVisibilityChanged>(_onValidationVisibilityChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    _logger.i('Login email changed.');
    emit(state.copyWith(
      email: event.email,
      emailFailure: validateEmailAddress(event.email),
      failure: none(),
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    _logger.i('Login password changed.');
    emit(state.copyWith(
      password: event.password,
      passwordFailure: validatePassword(event.password),
      failure: none(),
    ));
  }

  void _onValidationVisibilityChanged(
      ValidationVisibilityChanged event, Emitter<LoginState> emit) {
    _logger.i('Login validation visibility changed.');
    emit(state.copyWith(
      validationErrorVisibility: const ValidationErrorVisibility.show(),
    ));
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    _logger.i('Login submitted.');
    emit(state.copyWith(
      validationErrorVisibility: const ValidationErrorVisibility.show(),
      emailFailure: validateEmailAddress(state.email),
      passwordFailure: validatePassword(state.password),
      singleTimeEvent: null,
    ));

    if (!state.isValid) {
      _logger.w('Login form is not valid.');
      return;
    }

    _logger.i('Login form is valid, proceeding with login.');
    emit(state.copyWith(
      isLoading: true,
      failure: none(),
      singleTimeEvent: null,
    ));

    final result = await _authRepository.login(
      email: state.email,
      password: state.password,
    );

    result.fold(
      () {
        _logger.i('Login successful, navigating to home.');
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent: const LoginSingleTimeEvent.navigateToHome(),
        ));
      },
      (failure) {
        _logger.e('Login failed.', error: failure);
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent:
              LoginSingleTimeEvent.showErrorDialog(failure.message),
        ));
      },
    );
  }
}
