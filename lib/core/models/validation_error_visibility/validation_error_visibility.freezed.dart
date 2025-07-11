// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error_visibility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationErrorVisibility {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrorVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ValidationErrorVisibility()';
  }
}

/// @nodoc
class $ValidationErrorVisibilityCopyWith<$Res> {
  $ValidationErrorVisibilityCopyWith(
      ValidationErrorVisibility _, $Res Function(ValidationErrorVisibility) __);
}

/// Adds pattern-matching-related methods to [ValidationErrorVisibility].
extension ValidationErrorVisibilityPatterns on ValidationErrorVisibility {
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
    TResult Function(_Hide value)? hide,
    TResult Function(_Show value)? show,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Hide() when hide != null:
        return hide(_that);
      case _Show() when show != null:
        return show(_that);
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
    required TResult Function(_Hide value) hide,
    required TResult Function(_Show value) show,
  }) {
    final _that = this;
    switch (_that) {
      case _Hide():
        return hide(_that);
      case _Show():
        return show(_that);
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
    TResult? Function(_Hide value)? hide,
    TResult? Function(_Show value)? show,
  }) {
    final _that = this;
    switch (_that) {
      case _Hide() when hide != null:
        return hide(_that);
      case _Show() when show != null:
        return show(_that);
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
    TResult Function()? hide,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Hide() when hide != null:
        return hide();
      case _Show() when show != null:
        return show();
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
    required TResult Function() hide,
    required TResult Function() show,
  }) {
    final _that = this;
    switch (_that) {
      case _Hide():
        return hide();
      case _Show():
        return show();
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
    TResult? Function()? hide,
    TResult? Function()? show,
  }) {
    final _that = this;
    switch (_that) {
      case _Hide() when hide != null:
        return hide();
      case _Show() when show != null:
        return show();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Hide implements ValidationErrorVisibility {
  const _Hide();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Hide);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ValidationErrorVisibility.hide()';
  }
}

/// @nodoc

class _Show implements ValidationErrorVisibility {
  const _Show();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Show);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ValidationErrorVisibility.show()';
  }
}

// dart format on
