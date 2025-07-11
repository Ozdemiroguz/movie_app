// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult Function(_ResponseError value)? responseError,
    TResult Function(_Auth value)? auth,
    TResult Function(_LocationPermissionDenied value)? locationPermissionDenied,
    TResult Function(_LocationServiceDisabled value)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError() when unknownError != null:
        return unknownError(_that);
      case _NoConnection() when noConnection != null:
        return noConnection(_that);
      case _ConnectionTimedOut() when connectionTimedOut != null:
        return connectionTimedOut(_that);
      case _ResponseError() when responseError != null:
        return responseError(_that);
      case _Auth() when auth != null:
        return auth(_that);
      case _LocationPermissionDenied() when locationPermissionDenied != null:
        return locationPermissionDenied(_that);
      case _LocationServiceDisabled() when locationServiceDisabled != null:
        return locationServiceDisabled(_that);
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
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ConnectionTimedOut value) connectionTimedOut,
    required TResult Function(_ResponseError value) responseError,
    required TResult Function(_Auth value) auth,
    required TResult Function(_LocationPermissionDenied value)
        locationPermissionDenied,
    required TResult Function(_LocationServiceDisabled value)
        locationServiceDisabled,
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError():
        return unknownError(_that);
      case _NoConnection():
        return noConnection(_that);
      case _ConnectionTimedOut():
        return connectionTimedOut(_that);
      case _ResponseError():
        return responseError(_that);
      case _Auth():
        return auth(_that);
      case _LocationPermissionDenied():
        return locationPermissionDenied(_that);
      case _LocationServiceDisabled():
        return locationServiceDisabled(_that);
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
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ConnectionTimedOut value)? connectionTimedOut,
    TResult? Function(_ResponseError value)? responseError,
    TResult? Function(_Auth value)? auth,
    TResult? Function(_LocationPermissionDenied value)?
        locationPermissionDenied,
    TResult? Function(_LocationServiceDisabled value)? locationServiceDisabled,
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError() when unknownError != null:
        return unknownError(_that);
      case _NoConnection() when noConnection != null:
        return noConnection(_that);
      case _ConnectionTimedOut() when connectionTimedOut != null:
        return connectionTimedOut(_that);
      case _ResponseError() when responseError != null:
        return responseError(_that);
      case _Auth() when auth != null:
        return auth(_that);
      case _LocationPermissionDenied() when locationPermissionDenied != null:
        return locationPermissionDenied(_that);
      case _LocationServiceDisabled() when locationServiceDisabled != null:
        return locationServiceDisabled(_that);
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
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? connectionTimedOut,
    TResult Function(String message)? responseError,
    TResult Function(String message)? auth,
    TResult Function(String message)? locationPermissionDenied,
    TResult Function(String message)? locationServiceDisabled,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError() when unknownError != null:
        return unknownError(_that.message);
      case _NoConnection() when noConnection != null:
        return noConnection(_that.message);
      case _ConnectionTimedOut() when connectionTimedOut != null:
        return connectionTimedOut(_that.message);
      case _ResponseError() when responseError != null:
        return responseError(_that.message);
      case _Auth() when auth != null:
        return auth(_that.message);
      case _LocationPermissionDenied() when locationPermissionDenied != null:
        return locationPermissionDenied(_that.message);
      case _LocationServiceDisabled() when locationServiceDisabled != null:
        return locationServiceDisabled(_that.message);
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
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) connectionTimedOut,
    required TResult Function(String message) responseError,
    required TResult Function(String message) auth,
    required TResult Function(String message) locationPermissionDenied,
    required TResult Function(String message) locationServiceDisabled,
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError():
        return unknownError(_that.message);
      case _NoConnection():
        return noConnection(_that.message);
      case _ConnectionTimedOut():
        return connectionTimedOut(_that.message);
      case _ResponseError():
        return responseError(_that.message);
      case _Auth():
        return auth(_that.message);
      case _LocationPermissionDenied():
        return locationPermissionDenied(_that.message);
      case _LocationServiceDisabled():
        return locationServiceDisabled(_that.message);
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
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noConnection,
    TResult? Function(String message)? connectionTimedOut,
    TResult? Function(String message)? responseError,
    TResult? Function(String message)? auth,
    TResult? Function(String message)? locationPermissionDenied,
    TResult? Function(String message)? locationServiceDisabled,
  }) {
    final _that = this;
    switch (_that) {
      case _UnknownError() when unknownError != null:
        return unknownError(_that.message);
      case _NoConnection() when noConnection != null:
        return noConnection(_that.message);
      case _ConnectionTimedOut() when connectionTimedOut != null:
        return connectionTimedOut(_that.message);
      case _ResponseError() when responseError != null:
        return responseError(_that.message);
      case _Auth() when auth != null:
        return auth(_that.message);
      case _LocationPermissionDenied() when locationPermissionDenied != null:
        return locationPermissionDenied(_that.message);
      case _LocationServiceDisabled() when locationServiceDisabled != null:
        return locationServiceDisabled(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UnknownError implements Failure {
  const _UnknownError(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.unknownError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnknownErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) _then) =
      __$UnknownErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(this._self, this._then);

  final _UnknownError _self;
  final $Res Function(_UnknownError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_UnknownError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _NoConnection implements Failure {
  const _NoConnection(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoConnectionCopyWith<_NoConnection> get copyWith =>
      __$NoConnectionCopyWithImpl<_NoConnection>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.noConnection(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NoConnectionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) _then) =
      __$NoConnectionCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(this._self, this._then);

  final _NoConnection _self;
  final $Res Function(_NoConnection) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_NoConnection(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ConnectionTimedOut implements Failure {
  const _ConnectionTimedOut(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConnectionTimedOutCopyWith<_ConnectionTimedOut> get copyWith =>
      __$ConnectionTimedOutCopyWithImpl<_ConnectionTimedOut>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConnectionTimedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.connectionTimedOut(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ConnectionTimedOutCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$ConnectionTimedOutCopyWith(
          _ConnectionTimedOut value, $Res Function(_ConnectionTimedOut) _then) =
      __$ConnectionTimedOutCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ConnectionTimedOutCopyWithImpl<$Res>
    implements _$ConnectionTimedOutCopyWith<$Res> {
  __$ConnectionTimedOutCopyWithImpl(this._self, this._then);

  final _ConnectionTimedOut _self;
  final $Res Function(_ConnectionTimedOut) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ConnectionTimedOut(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ResponseError implements Failure {
  const _ResponseError(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseErrorCopyWith<_ResponseError> get copyWith =>
      __$ResponseErrorCopyWithImpl<_ResponseError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.responseError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$ResponseErrorCopyWith(
          _ResponseError value, $Res Function(_ResponseError) _then) =
      __$ResponseErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ResponseErrorCopyWithImpl<$Res>
    implements _$ResponseErrorCopyWith<$Res> {
  __$ResponseErrorCopyWithImpl(this._self, this._then);

  final _ResponseError _self;
  final $Res Function(_ResponseError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ResponseError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Auth implements Failure {
  const _Auth(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthCopyWith<_Auth> get copyWith =>
      __$AuthCopyWithImpl<_Auth>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.auth(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$AuthCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) _then) =
      __$AuthCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$AuthCopyWithImpl<$Res> implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(this._self, this._then);

  final _Auth _self;
  final $Res Function(_Auth) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Auth(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LocationPermissionDenied implements Failure {
  const _LocationPermissionDenied({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationPermissionDeniedCopyWith<_LocationPermissionDenied> get copyWith =>
      __$LocationPermissionDeniedCopyWithImpl<_LocationPermissionDenied>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPermissionDenied &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.locationPermissionDenied(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$LocationPermissionDeniedCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$LocationPermissionDeniedCopyWith(_LocationPermissionDenied value,
          $Res Function(_LocationPermissionDenied) _then) =
      __$LocationPermissionDeniedCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$LocationPermissionDeniedCopyWithImpl<$Res>
    implements _$LocationPermissionDeniedCopyWith<$Res> {
  __$LocationPermissionDeniedCopyWithImpl(this._self, this._then);

  final _LocationPermissionDenied _self;
  final $Res Function(_LocationPermissionDenied) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_LocationPermissionDenied(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LocationServiceDisabled implements Failure {
  const _LocationServiceDisabled({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationServiceDisabledCopyWith<_LocationServiceDisabled> get copyWith =>
      __$LocationServiceDisabledCopyWithImpl<_LocationServiceDisabled>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationServiceDisabled &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.locationServiceDisabled(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$LocationServiceDisabledCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$LocationServiceDisabledCopyWith(_LocationServiceDisabled value,
          $Res Function(_LocationServiceDisabled) _then) =
      __$LocationServiceDisabledCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$LocationServiceDisabledCopyWithImpl<$Res>
    implements _$LocationServiceDisabledCopyWith<$Res> {
  __$LocationServiceDisabledCopyWithImpl(this._self, this._then);

  final _LocationServiceDisabled _self;
  final $Res Function(_LocationServiceDisabled) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_LocationServiceDisabled(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
