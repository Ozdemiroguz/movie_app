// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageUpdateSingleTimeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageUpdateSingleTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ImageUpdateSingleTimeEvent()';
  }
}

/// @nodoc
class $ImageUpdateSingleTimeEventCopyWith<$Res> {
  $ImageUpdateSingleTimeEventCopyWith(ImageUpdateSingleTimeEvent _,
      $Res Function(ImageUpdateSingleTimeEvent) __);
}

/// Adds pattern-matching-related methods to [ImageUpdateSingleTimeEvent].
extension ImageUpdateSingleTimeEventPatterns on ImageUpdateSingleTimeEvent {
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
    TResult Function(UploadSuccess value)? uploadSuccess,
    TResult Function(ShowErrorToast value)? showErrorToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess() when uploadSuccess != null:
        return uploadSuccess(_that);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that);
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
    required TResult Function(UploadSuccess value) uploadSuccess,
    required TResult Function(ShowErrorToast value) showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess():
        return uploadSuccess(_that);
      case ShowErrorToast():
        return showErrorToast(_that);
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
    TResult? Function(UploadSuccess value)? uploadSuccess,
    TResult? Function(ShowErrorToast value)? showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess() when uploadSuccess != null:
        return uploadSuccess(_that);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that);
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
    TResult Function(String newImageUrl)? uploadSuccess,
    TResult Function(String message)? showErrorToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess() when uploadSuccess != null:
        return uploadSuccess(_that.newImageUrl);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that.message);
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
    required TResult Function(String newImageUrl) uploadSuccess,
    required TResult Function(String message) showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess():
        return uploadSuccess(_that.newImageUrl);
      case ShowErrorToast():
        return showErrorToast(_that.message);
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
    TResult? Function(String newImageUrl)? uploadSuccess,
    TResult? Function(String message)? showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case UploadSuccess() when uploadSuccess != null:
        return uploadSuccess(_that.newImageUrl);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class UploadSuccess implements ImageUpdateSingleTimeEvent {
  const UploadSuccess(this.newImageUrl);

  final String newImageUrl;

  /// Create a copy of ImageUpdateSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadSuccessCopyWith<UploadSuccess> get copyWith =>
      _$UploadSuccessCopyWithImpl<UploadSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadSuccess &&
            (identical(other.newImageUrl, newImageUrl) ||
                other.newImageUrl == newImageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newImageUrl);

  @override
  String toString() {
    return 'ImageUpdateSingleTimeEvent.uploadSuccess(newImageUrl: $newImageUrl)';
  }
}

/// @nodoc
abstract mixin class $UploadSuccessCopyWith<$Res>
    implements $ImageUpdateSingleTimeEventCopyWith<$Res> {
  factory $UploadSuccessCopyWith(
          UploadSuccess value, $Res Function(UploadSuccess) _then) =
      _$UploadSuccessCopyWithImpl;
  @useResult
  $Res call({String newImageUrl});
}

/// @nodoc
class _$UploadSuccessCopyWithImpl<$Res>
    implements $UploadSuccessCopyWith<$Res> {
  _$UploadSuccessCopyWithImpl(this._self, this._then);

  final UploadSuccess _self;
  final $Res Function(UploadSuccess) _then;

  /// Create a copy of ImageUpdateSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newImageUrl = null,
  }) {
    return _then(UploadSuccess(
      null == newImageUrl
          ? _self.newImageUrl
          : newImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ShowErrorToast implements ImageUpdateSingleTimeEvent {
  const ShowErrorToast(this.message);

  final String message;

  /// Create a copy of ImageUpdateSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowErrorToastCopyWith<ShowErrorToast> get copyWith =>
      _$ShowErrorToastCopyWithImpl<ShowErrorToast>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowErrorToast &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ImageUpdateSingleTimeEvent.showErrorToast(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ShowErrorToastCopyWith<$Res>
    implements $ImageUpdateSingleTimeEventCopyWith<$Res> {
  factory $ShowErrorToastCopyWith(
          ShowErrorToast value, $Res Function(ShowErrorToast) _then) =
      _$ShowErrorToastCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ShowErrorToastCopyWithImpl<$Res>
    implements $ShowErrorToastCopyWith<$Res> {
  _$ShowErrorToastCopyWithImpl(this._self, this._then);

  final ShowErrorToast _self;
  final $Res Function(ShowErrorToast) _then;

  /// Create a copy of ImageUpdateSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ShowErrorToast(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ProfileImageUpdateState {
  File? get selectedImageFile;
  bool get isLoading;
  ImageUpdateSingleTimeEvent? get singleTimeEvent;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileImageUpdateStateCopyWith<ProfileImageUpdateState> get copyWith =>
      _$ProfileImageUpdateStateCopyWithImpl<ProfileImageUpdateState>(
          this as ProfileImageUpdateState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileImageUpdateState &&
            (identical(other.selectedImageFile, selectedImageFile) ||
                other.selectedImageFile == selectedImageFile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedImageFile, isLoading, singleTimeEvent);

  @override
  String toString() {
    return 'ProfileImageUpdateState(selectedImageFile: $selectedImageFile, isLoading: $isLoading, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class $ProfileImageUpdateStateCopyWith<$Res> {
  factory $ProfileImageUpdateStateCopyWith(ProfileImageUpdateState value,
          $Res Function(ProfileImageUpdateState) _then) =
      _$ProfileImageUpdateStateCopyWithImpl;
  @useResult
  $Res call(
      {File? selectedImageFile,
      bool isLoading,
      ImageUpdateSingleTimeEvent? singleTimeEvent});

  $ImageUpdateSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class _$ProfileImageUpdateStateCopyWithImpl<$Res>
    implements $ProfileImageUpdateStateCopyWith<$Res> {
  _$ProfileImageUpdateStateCopyWithImpl(this._self, this._then);

  final ProfileImageUpdateState _self;
  final $Res Function(ProfileImageUpdateState) _then;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImageFile = freezed,
    Object? isLoading = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_self.copyWith(
      selectedImageFile: freezed == selectedImageFile
          ? _self.selectedImageFile
          : selectedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as ImageUpdateSingleTimeEvent?,
    ));
  }

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUpdateSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $ImageUpdateSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileImageUpdateState].
extension ProfileImageUpdateStatePatterns on ProfileImageUpdateState {
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
    TResult Function(_ProfileImageUpdateState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState() when $default != null:
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
    TResult Function(_ProfileImageUpdateState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState():
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
    TResult? Function(_ProfileImageUpdateState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState() when $default != null:
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
    TResult Function(File? selectedImageFile, bool isLoading,
            ImageUpdateSingleTimeEvent? singleTimeEvent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState() when $default != null:
        return $default(
            _that.selectedImageFile, _that.isLoading, _that.singleTimeEvent);
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
    TResult Function(File? selectedImageFile, bool isLoading,
            ImageUpdateSingleTimeEvent? singleTimeEvent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState():
        return $default(
            _that.selectedImageFile, _that.isLoading, _that.singleTimeEvent);
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
    TResult? Function(File? selectedImageFile, bool isLoading,
            ImageUpdateSingleTimeEvent? singleTimeEvent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileImageUpdateState() when $default != null:
        return $default(
            _that.selectedImageFile, _that.isLoading, _that.singleTimeEvent);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileImageUpdateState implements ProfileImageUpdateState {
  const _ProfileImageUpdateState(
      {this.selectedImageFile, required this.isLoading, this.singleTimeEvent});

  @override
  final File? selectedImageFile;
  @override
  final bool isLoading;
  @override
  final ImageUpdateSingleTimeEvent? singleTimeEvent;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileImageUpdateStateCopyWith<_ProfileImageUpdateState> get copyWith =>
      __$ProfileImageUpdateStateCopyWithImpl<_ProfileImageUpdateState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileImageUpdateState &&
            (identical(other.selectedImageFile, selectedImageFile) ||
                other.selectedImageFile == selectedImageFile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedImageFile, isLoading, singleTimeEvent);

  @override
  String toString() {
    return 'ProfileImageUpdateState(selectedImageFile: $selectedImageFile, isLoading: $isLoading, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class _$ProfileImageUpdateStateCopyWith<$Res>
    implements $ProfileImageUpdateStateCopyWith<$Res> {
  factory _$ProfileImageUpdateStateCopyWith(_ProfileImageUpdateState value,
          $Res Function(_ProfileImageUpdateState) _then) =
      __$ProfileImageUpdateStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {File? selectedImageFile,
      bool isLoading,
      ImageUpdateSingleTimeEvent? singleTimeEvent});

  @override
  $ImageUpdateSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class __$ProfileImageUpdateStateCopyWithImpl<$Res>
    implements _$ProfileImageUpdateStateCopyWith<$Res> {
  __$ProfileImageUpdateStateCopyWithImpl(this._self, this._then);

  final _ProfileImageUpdateState _self;
  final $Res Function(_ProfileImageUpdateState) _then;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedImageFile = freezed,
    Object? isLoading = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_ProfileImageUpdateState(
      selectedImageFile: freezed == selectedImageFile
          ? _self.selectedImageFile
          : selectedImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as ImageUpdateSingleTimeEvent?,
    ));
  }

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUpdateSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $ImageUpdateSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

// dart format on
