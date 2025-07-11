// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent()';
  }
}

/// @nodoc
class $ProfileEventCopyWith<$Res> {
  $ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}

/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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
    TResult Function(ProfileFetched value)? profileFetched,
    TResult Function(LogoutButtonPressed value)? logoutButtonPressed,
    TResult Function(ProfilePhotoUpdated value)? profilePhotoUpdated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched() when profileFetched != null:
        return profileFetched(_that);
      case LogoutButtonPressed() when logoutButtonPressed != null:
        return logoutButtonPressed(_that);
      case ProfilePhotoUpdated() when profilePhotoUpdated != null:
        return profilePhotoUpdated(_that);
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
    required TResult Function(ProfileFetched value) profileFetched,
    required TResult Function(LogoutButtonPressed value) logoutButtonPressed,
    required TResult Function(ProfilePhotoUpdated value) profilePhotoUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched():
        return profileFetched(_that);
      case LogoutButtonPressed():
        return logoutButtonPressed(_that);
      case ProfilePhotoUpdated():
        return profilePhotoUpdated(_that);
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
    TResult? Function(ProfileFetched value)? profileFetched,
    TResult? Function(LogoutButtonPressed value)? logoutButtonPressed,
    TResult? Function(ProfilePhotoUpdated value)? profilePhotoUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched() when profileFetched != null:
        return profileFetched(_that);
      case LogoutButtonPressed() when logoutButtonPressed != null:
        return logoutButtonPressed(_that);
      case ProfilePhotoUpdated() when profilePhotoUpdated != null:
        return profilePhotoUpdated(_that);
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
    TResult Function()? profileFetched,
    TResult Function()? logoutButtonPressed,
    TResult Function(File imageFile)? profilePhotoUpdated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched() when profileFetched != null:
        return profileFetched();
      case LogoutButtonPressed() when logoutButtonPressed != null:
        return logoutButtonPressed();
      case ProfilePhotoUpdated() when profilePhotoUpdated != null:
        return profilePhotoUpdated(_that.imageFile);
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
    required TResult Function() profileFetched,
    required TResult Function() logoutButtonPressed,
    required TResult Function(File imageFile) profilePhotoUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched():
        return profileFetched();
      case LogoutButtonPressed():
        return logoutButtonPressed();
      case ProfilePhotoUpdated():
        return profilePhotoUpdated(_that.imageFile);
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
    TResult? Function()? profileFetched,
    TResult? Function()? logoutButtonPressed,
    TResult? Function(File imageFile)? profilePhotoUpdated,
  }) {
    final _that = this;
    switch (_that) {
      case ProfileFetched() when profileFetched != null:
        return profileFetched();
      case LogoutButtonPressed() when logoutButtonPressed != null:
        return logoutButtonPressed();
      case ProfilePhotoUpdated() when profilePhotoUpdated != null:
        return profilePhotoUpdated(_that.imageFile);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ProfileFetched implements ProfileEvent {
  const ProfileFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.profileFetched()';
  }
}

/// @nodoc

class LogoutButtonPressed implements ProfileEvent {
  const LogoutButtonPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.logoutButtonPressed()';
  }
}

/// @nodoc

class ProfilePhotoUpdated implements ProfileEvent {
  const ProfilePhotoUpdated(this.imageFile);

  final File imageFile;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfilePhotoUpdatedCopyWith<ProfilePhotoUpdated> get copyWith =>
      _$ProfilePhotoUpdatedCopyWithImpl<ProfilePhotoUpdated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfilePhotoUpdated &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @override
  String toString() {
    return 'ProfileEvent.profilePhotoUpdated(imageFile: $imageFile)';
  }
}

/// @nodoc
abstract mixin class $ProfilePhotoUpdatedCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $ProfilePhotoUpdatedCopyWith(
          ProfilePhotoUpdated value, $Res Function(ProfilePhotoUpdated) _then) =
      _$ProfilePhotoUpdatedCopyWithImpl;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class _$ProfilePhotoUpdatedCopyWithImpl<$Res>
    implements $ProfilePhotoUpdatedCopyWith<$Res> {
  _$ProfilePhotoUpdatedCopyWithImpl(this._self, this._then);

  final ProfilePhotoUpdated _self;
  final $Res Function(ProfilePhotoUpdated) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(ProfilePhotoUpdated(
      null == imageFile
          ? _self.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

// dart format on
