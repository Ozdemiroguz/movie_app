// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  bool get isLoading;
  String get email;
  String get password;
  Option<Failure> get failure;
  Option<ValueFailure> get emailFailure;
  Option<ValueFailure> get passwordFailure;
  LoginSingleTimeEvent? get singleTimeEvent;
  ValidationErrorVisibility get validationErrorVisibility;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.passwordFailure, passwordFailure) ||
                other.passwordFailure == passwordFailure) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent) &&
            (identical(other.validationErrorVisibility,
                    validationErrorVisibility) ||
                other.validationErrorVisibility == validationErrorVisibility));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      email,
      password,
      failure,
      emailFailure,
      passwordFailure,
      singleTimeEvent,
      validationErrorVisibility);

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, email: $email, password: $password, failure: $failure, emailFailure: $emailFailure, passwordFailure: $passwordFailure, singleTimeEvent: $singleTimeEvent, validationErrorVisibility: $validationErrorVisibility)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String email,
      String password,
      Option<Failure> failure,
      Option<ValueFailure> emailFailure,
      Option<ValueFailure> passwordFailure,
      LoginSingleTimeEvent? singleTimeEvent,
      ValidationErrorVisibility validationErrorVisibility});

  $LoginSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? email = null,
    Object? password = null,
    Object? failure = null,
    Object? emailFailure = null,
    Object? passwordFailure = null,
    Object? singleTimeEvent = freezed,
    Object? validationErrorVisibility = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      passwordFailure: null == passwordFailure
          ? _self.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as LoginSingleTimeEvent?,
      validationErrorVisibility: null == validationErrorVisibility
          ? _self.validationErrorVisibility
          : validationErrorVisibility // ignore: cast_nullable_to_non_nullable
              as ValidationErrorVisibility,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $LoginSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!, (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility {
    return $ValidationErrorVisibilityCopyWith<$Res>(
        _self.validationErrorVisibility, (value) {
      return _then(_self.copyWith(validationErrorVisibility: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            String email,
            String password,
            Option<Failure> failure,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            LoginSingleTimeEvent? singleTimeEvent,
            ValidationErrorVisibility validationErrorVisibility)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.isLoading,
            _that.email,
            _that.password,
            _that.failure,
            _that.emailFailure,
            _that.passwordFailure,
            _that.singleTimeEvent,
            _that.validationErrorVisibility);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            String email,
            String password,
            Option<Failure> failure,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            LoginSingleTimeEvent? singleTimeEvent,
            ValidationErrorVisibility validationErrorVisibility)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState():
        return $default(
            _that.isLoading,
            _that.email,
            _that.password,
            _that.failure,
            _that.emailFailure,
            _that.passwordFailure,
            _that.singleTimeEvent,
            _that.validationErrorVisibility);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isLoading,
            String email,
            String password,
            Option<Failure> failure,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            LoginSingleTimeEvent? singleTimeEvent,
            ValidationErrorVisibility validationErrorVisibility)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginState() when $default != null:
        return $default(
            _that.isLoading,
            _that.email,
            _that.password,
            _that.failure,
            _that.emailFailure,
            _that.passwordFailure,
            _that.singleTimeEvent,
            _that.validationErrorVisibility);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoginState extends LoginState {
  _LoginState(
      {required this.isLoading,
      required this.email,
      required this.password,
      required this.failure,
      required this.emailFailure,
      required this.passwordFailure,
      this.singleTimeEvent,
      required this.validationErrorVisibility})
      : super._();

  @override
  final bool isLoading;
  @override
  final String email;
  @override
  final String password;
  @override
  final Option<Failure> failure;
  @override
  final Option<ValueFailure> emailFailure;
  @override
  final Option<ValueFailure> passwordFailure;
  @override
  final LoginSingleTimeEvent? singleTimeEvent;
  @override
  final ValidationErrorVisibility validationErrorVisibility;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.passwordFailure, passwordFailure) ||
                other.passwordFailure == passwordFailure) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent) &&
            (identical(other.validationErrorVisibility,
                    validationErrorVisibility) ||
                other.validationErrorVisibility == validationErrorVisibility));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      email,
      password,
      failure,
      emailFailure,
      passwordFailure,
      singleTimeEvent,
      validationErrorVisibility);

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, email: $email, password: $password, failure: $failure, emailFailure: $emailFailure, passwordFailure: $passwordFailure, singleTimeEvent: $singleTimeEvent, validationErrorVisibility: $validationErrorVisibility)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String email,
      String password,
      Option<Failure> failure,
      Option<ValueFailure> emailFailure,
      Option<ValueFailure> passwordFailure,
      LoginSingleTimeEvent? singleTimeEvent,
      ValidationErrorVisibility validationErrorVisibility});

  @override
  $LoginSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
  @override
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? email = null,
    Object? password = null,
    Object? failure = null,
    Object? emailFailure = null,
    Object? passwordFailure = null,
    Object? singleTimeEvent = freezed,
    Object? validationErrorVisibility = null,
  }) {
    return _then(_LoginState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      passwordFailure: null == passwordFailure
          ? _self.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as LoginSingleTimeEvent?,
      validationErrorVisibility: null == validationErrorVisibility
          ? _self.validationErrorVisibility
          : validationErrorVisibility // ignore: cast_nullable_to_non_nullable
              as ValidationErrorVisibility,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $LoginSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!, (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility {
    return $ValidationErrorVisibilityCopyWith<$Res>(
        _self.validationErrorVisibility, (value) {
      return _then(_self.copyWith(validationErrorVisibility: value));
    });
  }
}

/// @nodoc
mixin _$LoginSingleTimeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginSingleTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginSingleTimeEvent()';
  }
}

/// @nodoc
class $LoginSingleTimeEventCopyWith<$Res> {
  $LoginSingleTimeEventCopyWith(
      LoginSingleTimeEvent _, $Res Function(LoginSingleTimeEvent) __);
}

/// Adds pattern-matching-related methods to [LoginSingleTimeEvent].
extension LoginSingleTimeEventPatterns on LoginSingleTimeEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome() when navigateToHome != null:
        return navigateToHome(_that);
      case _ShowErrorDialog() when showErrorDialog != null:
        return showErrorDialog(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome():
        return navigateToHome(_that);
      case _ShowErrorDialog():
        return showErrorDialog(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome() when navigateToHome != null:
        return navigateToHome(_that);
      case _ShowErrorDialog() when showErrorDialog != null:
        return showErrorDialog(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToHome,
    TResult Function(String message)? showErrorDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome() when navigateToHome != null:
        return navigateToHome();
      case _ShowErrorDialog() when showErrorDialog != null:
        return showErrorDialog(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToHome,
    required TResult Function(String message) showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome():
        return navigateToHome();
      case _ShowErrorDialog():
        return showErrorDialog(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToHome,
    TResult? Function(String message)? showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToHome() when navigateToHome != null:
        return navigateToHome();
      case _ShowErrorDialog() when showErrorDialog != null:
        return showErrorDialog(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NavigateToHome implements LoginSingleTimeEvent {
  const _NavigateToHome();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavigateToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginSingleTimeEvent.navigateToHome()';
  }
}

/// @nodoc

class _ShowErrorDialog implements LoginSingleTimeEvent {
  const _ShowErrorDialog(this.message);

  final String message;

  /// Create a copy of LoginSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShowErrorDialogCopyWith<_ShowErrorDialog> get copyWith =>
      __$ShowErrorDialogCopyWithImpl<_ShowErrorDialog>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowErrorDialog &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'LoginSingleTimeEvent.showErrorDialog(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ShowErrorDialogCopyWith<$Res>
    implements $LoginSingleTimeEventCopyWith<$Res> {
  factory _$ShowErrorDialogCopyWith(
          _ShowErrorDialog value, $Res Function(_ShowErrorDialog) _then) =
      __$ShowErrorDialogCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ShowErrorDialogCopyWithImpl<$Res>
    implements _$ShowErrorDialogCopyWith<$Res> {
  __$ShowErrorDialogCopyWithImpl(this._self, this._then);

  final _ShowErrorDialog _self;
  final $Res Function(_ShowErrorDialog) _then;

  /// Create a copy of LoginSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ShowErrorDialog(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
