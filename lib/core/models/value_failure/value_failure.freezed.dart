// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValueFailure {
  String get message;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValueFailureCopyWith<ValueFailure> get copyWith =>
      _$ValueFailureCopyWithImpl<ValueFailure>(
          this as ValueFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValueFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ValueFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) _then) =
      _$ValueFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure _self;
  final $Res Function(ValueFailure) _then;

  /// Create a copy of ValueFailure
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

/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns on ValueFailure {
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
    TResult Function(_InvalidInput value)? invalidInput,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput() when invalidInput != null:
        return invalidInput(_that);
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
    required TResult Function(_InvalidInput value) invalidInput,
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput():
        return invalidInput(_that);
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
    TResult? Function(_InvalidInput value)? invalidInput,
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput() when invalidInput != null:
        return invalidInput(_that);
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
    TResult Function(String message)? invalidInput,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput() when invalidInput != null:
        return invalidInput(_that.message);
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
    required TResult Function(String message) invalidInput,
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput():
        return invalidInput(_that.message);
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
    TResult? Function(String message)? invalidInput,
  }) {
    final _that = this;
    switch (_that) {
      case _InvalidInput() when invalidInput != null:
        return invalidInput(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _InvalidInput implements ValueFailure {
  const _InvalidInput(this.message);

  @override
  final String message;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvalidInputCopyWith<_InvalidInput> get copyWith =>
      __$InvalidInputCopyWithImpl<_InvalidInput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidInput &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ValueFailure.invalidInput(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$InvalidInputCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$InvalidInputCopyWith(
          _InvalidInput value, $Res Function(_InvalidInput) _then) =
      __$InvalidInputCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$InvalidInputCopyWithImpl<$Res>
    implements _$InvalidInputCopyWith<$Res> {
  __$InvalidInputCopyWithImpl(this._self, this._then);

  final _InvalidInput _self;
  final $Res Function(_InvalidInput) _then;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_InvalidInput(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
