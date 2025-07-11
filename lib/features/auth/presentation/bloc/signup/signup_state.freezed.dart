// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupState {
  bool get isLoading;
  String get name;
  Option<ValueFailure> get nameFailure;
  String get email;
  String get password;
  String get confirmPassword;
  Option<ValueFailure> get emailFailure;
  Option<ValueFailure> get passwordFailure;
  Option<ValueFailure> get confirmPasswordFailure;
  ValidationErrorVisibility get validationErrorVisibility;
  SignupSingleTimeEvent? get singleTimeEvent;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignupStateCopyWith<SignupState> get copyWith =>
      _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignupState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameFailure, nameFailure) ||
                other.nameFailure == nameFailure) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.passwordFailure, passwordFailure) ||
                other.passwordFailure == passwordFailure) &&
            (identical(other.confirmPasswordFailure, confirmPasswordFailure) ||
                other.confirmPasswordFailure == confirmPasswordFailure) &&
            (identical(other.validationErrorVisibility,
                    validationErrorVisibility) ||
                other.validationErrorVisibility == validationErrorVisibility) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      name,
      nameFailure,
      email,
      password,
      confirmPassword,
      emailFailure,
      passwordFailure,
      confirmPasswordFailure,
      validationErrorVisibility,
      singleTimeEvent);

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, name: $name, nameFailure: $nameFailure, email: $email, password: $password, confirmPassword: $confirmPassword, emailFailure: $emailFailure, passwordFailure: $passwordFailure, confirmPasswordFailure: $confirmPasswordFailure, validationErrorVisibility: $validationErrorVisibility, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) _then) =
      _$SignupStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      Option<ValueFailure> nameFailure,
      String email,
      String password,
      String confirmPassword,
      Option<ValueFailure> emailFailure,
      Option<ValueFailure> passwordFailure,
      Option<ValueFailure> confirmPasswordFailure,
      ValidationErrorVisibility validationErrorVisibility,
      SignupSingleTimeEvent? singleTimeEvent});

  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility;
  $SignupSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? nameFailure = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailFailure = null,
    Object? passwordFailure = null,
    Object? confirmPasswordFailure = null,
    Object? validationErrorVisibility = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFailure: null == nameFailure
          ? _self.nameFailure
          : nameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      passwordFailure: null == passwordFailure
          ? _self.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      confirmPasswordFailure: null == confirmPasswordFailure
          ? _self.confirmPasswordFailure
          : confirmPasswordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      validationErrorVisibility: null == validationErrorVisibility
          ? _self.validationErrorVisibility
          : validationErrorVisibility // ignore: cast_nullable_to_non_nullable
              as ValidationErrorVisibility,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as SignupSingleTimeEvent?,
    ));
  }

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility {
    return $ValidationErrorVisibilityCopyWith<$Res>(
        _self.validationErrorVisibility, (value) {
      return _then(_self.copyWith(validationErrorVisibility: value));
    });
  }

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignupSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $SignupSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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
    TResult Function(_SignupState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignupState() when $default != null:
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
    TResult Function(_SignupState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupState():
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
    TResult? Function(_SignupState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupState() when $default != null:
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
            String name,
            Option<ValueFailure> nameFailure,
            String email,
            String password,
            String confirmPassword,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            Option<ValueFailure> confirmPasswordFailure,
            ValidationErrorVisibility validationErrorVisibility,
            SignupSingleTimeEvent? singleTimeEvent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SignupState() when $default != null:
        return $default(
            _that.isLoading,
            _that.name,
            _that.nameFailure,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.emailFailure,
            _that.passwordFailure,
            _that.confirmPasswordFailure,
            _that.validationErrorVisibility,
            _that.singleTimeEvent);
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
            String name,
            Option<ValueFailure> nameFailure,
            String email,
            String password,
            String confirmPassword,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            Option<ValueFailure> confirmPasswordFailure,
            ValidationErrorVisibility validationErrorVisibility,
            SignupSingleTimeEvent? singleTimeEvent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupState():
        return $default(
            _that.isLoading,
            _that.name,
            _that.nameFailure,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.emailFailure,
            _that.passwordFailure,
            _that.confirmPasswordFailure,
            _that.validationErrorVisibility,
            _that.singleTimeEvent);
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
            String name,
            Option<ValueFailure> nameFailure,
            String email,
            String password,
            String confirmPassword,
            Option<ValueFailure> emailFailure,
            Option<ValueFailure> passwordFailure,
            Option<ValueFailure> confirmPasswordFailure,
            ValidationErrorVisibility validationErrorVisibility,
            SignupSingleTimeEvent? singleTimeEvent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SignupState() when $default != null:
        return $default(
            _that.isLoading,
            _that.name,
            _that.nameFailure,
            _that.email,
            _that.password,
            _that.confirmPassword,
            _that.emailFailure,
            _that.passwordFailure,
            _that.confirmPasswordFailure,
            _that.validationErrorVisibility,
            _that.singleTimeEvent);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SignupState extends SignupState {
  _SignupState(
      {required this.isLoading,
      required this.name,
      required this.nameFailure,
      required this.email,
      required this.password,
      required this.confirmPassword,
      required this.emailFailure,
      required this.passwordFailure,
      required this.confirmPasswordFailure,
      required this.validationErrorVisibility,
      this.singleTimeEvent})
      : super._();

  @override
  final bool isLoading;
  @override
  final String name;
  @override
  final Option<ValueFailure> nameFailure;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final Option<ValueFailure> emailFailure;
  @override
  final Option<ValueFailure> passwordFailure;
  @override
  final Option<ValueFailure> confirmPasswordFailure;
  @override
  final ValidationErrorVisibility validationErrorVisibility;
  @override
  final SignupSingleTimeEvent? singleTimeEvent;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameFailure, nameFailure) ||
                other.nameFailure == nameFailure) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.passwordFailure, passwordFailure) ||
                other.passwordFailure == passwordFailure) &&
            (identical(other.confirmPasswordFailure, confirmPasswordFailure) ||
                other.confirmPasswordFailure == confirmPasswordFailure) &&
            (identical(other.validationErrorVisibility,
                    validationErrorVisibility) ||
                other.validationErrorVisibility == validationErrorVisibility) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      name,
      nameFailure,
      email,
      password,
      confirmPassword,
      emailFailure,
      passwordFailure,
      confirmPasswordFailure,
      validationErrorVisibility,
      singleTimeEvent);

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, name: $name, nameFailure: $nameFailure, email: $email, password: $password, confirmPassword: $confirmPassword, emailFailure: $emailFailure, passwordFailure: $passwordFailure, confirmPasswordFailure: $confirmPasswordFailure, validationErrorVisibility: $validationErrorVisibility, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) _then) =
      __$SignupStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String name,
      Option<ValueFailure> nameFailure,
      String email,
      String password,
      String confirmPassword,
      Option<ValueFailure> emailFailure,
      Option<ValueFailure> passwordFailure,
      Option<ValueFailure> confirmPasswordFailure,
      ValidationErrorVisibility validationErrorVisibility,
      SignupSingleTimeEvent? singleTimeEvent});

  @override
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility;
  @override
  $SignupSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? name = null,
    Object? nameFailure = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailFailure = null,
    Object? passwordFailure = null,
    Object? confirmPasswordFailure = null,
    Object? validationErrorVisibility = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_SignupState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameFailure: null == nameFailure
          ? _self.nameFailure
          : nameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      passwordFailure: null == passwordFailure
          ? _self.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      confirmPasswordFailure: null == confirmPasswordFailure
          ? _self.confirmPasswordFailure
          : confirmPasswordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      validationErrorVisibility: null == validationErrorVisibility
          ? _self.validationErrorVisibility
          : validationErrorVisibility // ignore: cast_nullable_to_non_nullable
              as ValidationErrorVisibility,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as SignupSingleTimeEvent?,
    ));
  }

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorVisibilityCopyWith<$Res> get validationErrorVisibility {
    return $ValidationErrorVisibilityCopyWith<$Res>(
        _self.validationErrorVisibility, (value) {
      return _then(_self.copyWith(validationErrorVisibility: value));
    });
  }

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignupSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $SignupSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

/// @nodoc
mixin _$SignupSingleTimeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignupSingleTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignupSingleTimeEvent()';
  }
}

/// @nodoc
class $SignupSingleTimeEventCopyWith<$Res> {
  $SignupSingleTimeEventCopyWith(
      SignupSingleTimeEvent _, $Res Function(SignupSingleTimeEvent) __);
}

/// Adds pattern-matching-related methods to [SignupSingleTimeEvent].
extension SignupSingleTimeEventPatterns on SignupSingleTimeEvent {
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
    TResult Function(_NavigateToProfileUpdate value)? navigateToProfileUpdate,
    TResult Function(_ShowErrorDialog value)? showErrorDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate() when navigateToProfileUpdate != null:
        return navigateToProfileUpdate(_that);
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
    required TResult Function(_NavigateToProfileUpdate value)
        navigateToProfileUpdate,
    required TResult Function(_ShowErrorDialog value) showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate():
        return navigateToProfileUpdate(_that);
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
    TResult? Function(_NavigateToProfileUpdate value)? navigateToProfileUpdate,
    TResult? Function(_ShowErrorDialog value)? showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate() when navigateToProfileUpdate != null:
        return navigateToProfileUpdate(_that);
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
    TResult Function()? navigateToProfileUpdate,
    TResult Function(String message)? showErrorDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate() when navigateToProfileUpdate != null:
        return navigateToProfileUpdate();
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
    required TResult Function() navigateToProfileUpdate,
    required TResult Function(String message) showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate():
        return navigateToProfileUpdate();
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
    TResult? Function()? navigateToProfileUpdate,
    TResult? Function(String message)? showErrorDialog,
  }) {
    final _that = this;
    switch (_that) {
      case _NavigateToProfileUpdate() when navigateToProfileUpdate != null:
        return navigateToProfileUpdate();
      case _ShowErrorDialog() when showErrorDialog != null:
        return showErrorDialog(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NavigateToProfileUpdate implements SignupSingleTimeEvent {
  const _NavigateToProfileUpdate();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NavigateToProfileUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignupSingleTimeEvent.navigateToProfileUpdate()';
  }
}

/// @nodoc

class _ShowErrorDialog implements SignupSingleTimeEvent {
  const _ShowErrorDialog(this.message);

  final String message;

  /// Create a copy of SignupSingleTimeEvent
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
    return 'SignupSingleTimeEvent.showErrorDialog(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ShowErrorDialogCopyWith<$Res>
    implements $SignupSingleTimeEventCopyWith<$Res> {
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

  /// Create a copy of SignupSingleTimeEvent
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
