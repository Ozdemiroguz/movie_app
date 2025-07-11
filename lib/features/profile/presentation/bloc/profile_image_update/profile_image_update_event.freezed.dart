// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_update_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileImageUpdateEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileImageUpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileImageUpdateEvent()';
  }
}

/// @nodoc
class $ProfileImageUpdateEventCopyWith<$Res> {
  $ProfileImageUpdateEventCopyWith(
      ProfileImageUpdateEvent _, $Res Function(ProfileImageUpdateEvent) __);
}

/// Adds pattern-matching-related methods to [ProfileImageUpdateEvent].
extension ProfileImageUpdateEventPatterns on ProfileImageUpdateEvent {
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
    TResult Function(ImageSelected value)? imageSelected,
    TResult Function(UploadStarted value)? uploadStarted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected() when imageSelected != null:
        return imageSelected(_that);
      case UploadStarted() when uploadStarted != null:
        return uploadStarted(_that);
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
    required TResult Function(ImageSelected value) imageSelected,
    required TResult Function(UploadStarted value) uploadStarted,
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected():
        return imageSelected(_that);
      case UploadStarted():
        return uploadStarted(_that);
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
    TResult? Function(ImageSelected value)? imageSelected,
    TResult? Function(UploadStarted value)? uploadStarted,
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected() when imageSelected != null:
        return imageSelected(_that);
      case UploadStarted() when uploadStarted != null:
        return uploadStarted(_that);
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
    TResult Function(File imageFile)? imageSelected,
    TResult Function()? uploadStarted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected() when imageSelected != null:
        return imageSelected(_that.imageFile);
      case UploadStarted() when uploadStarted != null:
        return uploadStarted();
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
    required TResult Function(File imageFile) imageSelected,
    required TResult Function() uploadStarted,
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected():
        return imageSelected(_that.imageFile);
      case UploadStarted():
        return uploadStarted();
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
    TResult? Function(File imageFile)? imageSelected,
    TResult? Function()? uploadStarted,
  }) {
    final _that = this;
    switch (_that) {
      case ImageSelected() when imageSelected != null:
        return imageSelected(_that.imageFile);
      case UploadStarted() when uploadStarted != null:
        return uploadStarted();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ImageSelected implements ProfileImageUpdateEvent {
  const ImageSelected(this.imageFile);

  final File imageFile;

  /// Create a copy of ProfileImageUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImageSelectedCopyWith<ImageSelected> get copyWith =>
      _$ImageSelectedCopyWithImpl<ImageSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageSelected &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @override
  String toString() {
    return 'ProfileImageUpdateEvent.imageSelected(imageFile: $imageFile)';
  }
}

/// @nodoc
abstract mixin class $ImageSelectedCopyWith<$Res>
    implements $ProfileImageUpdateEventCopyWith<$Res> {
  factory $ImageSelectedCopyWith(
          ImageSelected value, $Res Function(ImageSelected) _then) =
      _$ImageSelectedCopyWithImpl;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class _$ImageSelectedCopyWithImpl<$Res>
    implements $ImageSelectedCopyWith<$Res> {
  _$ImageSelectedCopyWithImpl(this._self, this._then);

  final ImageSelected _self;
  final $Res Function(ImageSelected) _then;

  /// Create a copy of ProfileImageUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(ImageSelected(
      null == imageFile
          ? _self.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class UploadStarted implements ProfileImageUpdateEvent {
  const UploadStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileImageUpdateEvent.uploadStarted()';
  }
}

// dart format on
