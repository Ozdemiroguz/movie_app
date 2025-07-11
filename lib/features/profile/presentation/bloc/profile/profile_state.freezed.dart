// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileSingleTimeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileSingleTimeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileSingleTimeEvent()';
  }
}

/// @nodoc
class $ProfileSingleTimeEventCopyWith<$Res> {
  $ProfileSingleTimeEventCopyWith(
      ProfileSingleTimeEvent _, $Res Function(ProfileSingleTimeEvent) __);
}

/// Adds pattern-matching-related methods to [ProfileSingleTimeEvent].
extension ProfileSingleTimeEventPatterns on ProfileSingleTimeEvent {
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
    TResult Function(NavigateToLogin value)? navigateToLogin,
    TResult Function(ShowErrorToast value)? showErrorToast,
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin() when navigateToLogin != null:
        return navigateToLogin(_that);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that);
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that);
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
    required TResult Function(NavigateToLogin value) navigateToLogin,
    required TResult Function(ShowErrorToast value) showErrorToast,
    required TResult Function(ShowSuccessToast value) showSuccessToast,
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin():
        return navigateToLogin(_that);
      case ShowErrorToast():
        return showErrorToast(_that);
      case ShowSuccessToast():
        return showSuccessToast(_that);
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
    TResult? Function(NavigateToLogin value)? navigateToLogin,
    TResult? Function(ShowErrorToast value)? showErrorToast,
    TResult? Function(ShowSuccessToast value)? showSuccessToast,
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin() when navigateToLogin != null:
        return navigateToLogin(_that);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that);
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that);
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
    TResult Function()? navigateToLogin,
    TResult Function(String message)? showErrorToast,
    TResult Function(String message)? showSuccessToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin() when navigateToLogin != null:
        return navigateToLogin();
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that.message);
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that.message);
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
    required TResult Function() navigateToLogin,
    required TResult Function(String message) showErrorToast,
    required TResult Function(String message) showSuccessToast,
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin():
        return navigateToLogin();
      case ShowErrorToast():
        return showErrorToast(_that.message);
      case ShowSuccessToast():
        return showSuccessToast(_that.message);
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
    TResult? Function()? navigateToLogin,
    TResult? Function(String message)? showErrorToast,
    TResult? Function(String message)? showSuccessToast,
  }) {
    final _that = this;
    switch (_that) {
      case NavigateToLogin() when navigateToLogin != null:
        return navigateToLogin();
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that.message);
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class NavigateToLogin implements ProfileSingleTimeEvent {
  const NavigateToLogin();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NavigateToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileSingleTimeEvent.navigateToLogin()';
  }
}

/// @nodoc

class ShowErrorToast implements ProfileSingleTimeEvent {
  const ShowErrorToast(this.message);

  final String message;

  /// Create a copy of ProfileSingleTimeEvent
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
    return 'ProfileSingleTimeEvent.showErrorToast(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ShowErrorToastCopyWith<$Res>
    implements $ProfileSingleTimeEventCopyWith<$Res> {
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

  /// Create a copy of ProfileSingleTimeEvent
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

class ShowSuccessToast implements ProfileSingleTimeEvent {
  const ShowSuccessToast(this.message);

  final String message;

  /// Create a copy of ProfileSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShowSuccessToastCopyWith<ShowSuccessToast> get copyWith =>
      _$ShowSuccessToastCopyWithImpl<ShowSuccessToast>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowSuccessToast &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileSingleTimeEvent.showSuccessToast(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ShowSuccessToastCopyWith<$Res>
    implements $ProfileSingleTimeEventCopyWith<$Res> {
  factory $ShowSuccessToastCopyWith(
          ShowSuccessToast value, $Res Function(ShowSuccessToast) _then) =
      _$ShowSuccessToastCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ShowSuccessToastCopyWithImpl<$Res>
    implements $ShowSuccessToastCopyWith<$Res> {
  _$ShowSuccessToastCopyWithImpl(this._self, this._then);

  final ShowSuccessToast _self;
  final $Res Function(ShowSuccessToast) _then;

  /// Create a copy of ProfileSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ShowSuccessToast(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ProfileStatus {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileStatus()';
  }
}

/// @nodoc
class $ProfileStatusCopyWith<$Res> {
  $ProfileStatusCopyWith(ProfileStatus _, $Res Function(ProfileStatus) __);
}

/// Adds pattern-matching-related methods to [ProfileStatus].
extension ProfileStatusPatterns on ProfileStatus {
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure();
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _Success():
        return success();
      case _Failure():
        return failure();
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
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements ProfileStatus {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileStatus.initial()';
  }
}

/// @nodoc

class _Loading implements ProfileStatus {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileStatus.loading()';
  }
}

/// @nodoc

class _Success implements ProfileStatus {
  const _Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileStatus.success()';
  }
}

/// @nodoc

class _Failure implements ProfileStatus {
  const _Failure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileStatus.failure()';
  }
}

/// @nodoc
mixin _$ProfileState {
  ProfileStatus get status;
  ProfileModel get profile;
  bool get languageChanged;
  ProfileSingleTimeEvent? get singleTimeEvent;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.languageChanged, languageChanged) ||
                other.languageChanged == languageChanged) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, profile, languageChanged, singleTimeEvent);

  @override
  String toString() {
    return 'ProfileState(status: $status, profile: $profile, languageChanged: $languageChanged, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {ProfileStatus status,
      ProfileModel profile,
      bool languageChanged,
      ProfileSingleTimeEvent? singleTimeEvent});

  $ProfileStatusCopyWith<$Res> get status;
  $ProfileModelCopyWith<$Res> get profile;
  $ProfileSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = null,
    Object? languageChanged = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      languageChanged: null == languageChanged
          ? _self.languageChanged
          : languageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as ProfileSingleTimeEvent?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileStatusCopyWith<$Res> get status {
    return $ProfileStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get profile {
    return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $ProfileSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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
    TResult Function(_ProfileState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(_ProfileState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
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
    TResult? Function(_ProfileState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(ProfileStatus status, ProfileModel profile,
            bool languageChanged, ProfileSingleTimeEvent? singleTimeEvent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(_that.status, _that.profile, _that.languageChanged,
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
    TResult Function(ProfileStatus status, ProfileModel profile,
            bool languageChanged, ProfileSingleTimeEvent? singleTimeEvent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
        return $default(_that.status, _that.profile, _that.languageChanged,
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
    TResult? Function(ProfileStatus status, ProfileModel profile,
            bool languageChanged, ProfileSingleTimeEvent? singleTimeEvent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(_that.status, _that.profile, _that.languageChanged,
            _that.singleTimeEvent);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileState implements ProfileState {
  const _ProfileState(
      {required this.status,
      required this.profile,
      required this.languageChanged,
      this.singleTimeEvent});

  @override
  final ProfileStatus status;
  @override
  final ProfileModel profile;
  @override
  final bool languageChanged;
  @override
  final ProfileSingleTimeEvent? singleTimeEvent;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.languageChanged, languageChanged) ||
                other.languageChanged == languageChanged) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, profile, languageChanged, singleTimeEvent);

  @override
  String toString() {
    return 'ProfileState(status: $status, profile: $profile, languageChanged: $languageChanged, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProfileStatus status,
      ProfileModel profile,
      bool languageChanged,
      ProfileSingleTimeEvent? singleTimeEvent});

  @override
  $ProfileStatusCopyWith<$Res> get status;
  @override
  $ProfileModelCopyWith<$Res> get profile;
  @override
  $ProfileSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? profile = null,
    Object? languageChanged = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_ProfileState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      languageChanged: null == languageChanged
          ? _self.languageChanged
          : languageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as ProfileSingleTimeEvent?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileStatusCopyWith<$Res> get status {
    return $ProfileStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get profile {
    return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $ProfileSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!,
        (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

// dart format on
