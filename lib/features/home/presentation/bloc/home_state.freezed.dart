// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeSingleTimeEvent {
  String get message;

  /// Create a copy of HomeSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeSingleTimeEventCopyWith<HomeSingleTimeEvent> get copyWith =>
      _$HomeSingleTimeEventCopyWithImpl<HomeSingleTimeEvent>(
          this as HomeSingleTimeEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeSingleTimeEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HomeSingleTimeEvent(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HomeSingleTimeEventCopyWith<$Res> {
  factory $HomeSingleTimeEventCopyWith(
          HomeSingleTimeEvent value, $Res Function(HomeSingleTimeEvent) _then) =
      _$HomeSingleTimeEventCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeSingleTimeEventCopyWithImpl<$Res>
    implements $HomeSingleTimeEventCopyWith<$Res> {
  _$HomeSingleTimeEventCopyWithImpl(this._self, this._then);

  final HomeSingleTimeEvent _self;
  final $Res Function(HomeSingleTimeEvent) _then;

  /// Create a copy of HomeSingleTimeEvent
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

/// Adds pattern-matching-related methods to [HomeSingleTimeEvent].
extension HomeSingleTimeEventPatterns on HomeSingleTimeEvent {
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
    TResult Function(ShowSuccessToast value)? showSuccessToast,
    TResult Function(ShowErrorToast value)? showErrorToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that);
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
    required TResult Function(ShowSuccessToast value) showSuccessToast,
    required TResult Function(ShowErrorToast value) showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast():
        return showSuccessToast(_that);
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
    TResult? Function(ShowSuccessToast value)? showSuccessToast,
    TResult? Function(ShowErrorToast value)? showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that);
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
    TResult Function(String message)? showSuccessToast,
    TResult Function(String message)? showErrorToast,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that.message);
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
    required TResult Function(String message) showSuccessToast,
    required TResult Function(String message) showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast():
        return showSuccessToast(_that.message);
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
    TResult? Function(String message)? showSuccessToast,
    TResult? Function(String message)? showErrorToast,
  }) {
    final _that = this;
    switch (_that) {
      case ShowSuccessToast() when showSuccessToast != null:
        return showSuccessToast(_that.message);
      case ShowErrorToast() when showErrorToast != null:
        return showErrorToast(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ShowSuccessToast implements HomeSingleTimeEvent {
  const ShowSuccessToast(this.message);

  @override
  final String message;

  /// Create a copy of HomeSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'HomeSingleTimeEvent.showSuccessToast(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ShowSuccessToastCopyWith<$Res>
    implements $HomeSingleTimeEventCopyWith<$Res> {
  factory $ShowSuccessToastCopyWith(
          ShowSuccessToast value, $Res Function(ShowSuccessToast) _then) =
      _$ShowSuccessToastCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ShowSuccessToastCopyWithImpl<$Res>
    implements $ShowSuccessToastCopyWith<$Res> {
  _$ShowSuccessToastCopyWithImpl(this._self, this._then);

  final ShowSuccessToast _self;
  final $Res Function(ShowSuccessToast) _then;

  /// Create a copy of HomeSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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

class ShowErrorToast implements HomeSingleTimeEvent {
  const ShowErrorToast(this.message);

  @override
  final String message;

  /// Create a copy of HomeSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
    return 'HomeSingleTimeEvent.showErrorToast(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ShowErrorToastCopyWith<$Res>
    implements $HomeSingleTimeEventCopyWith<$Res> {
  factory $ShowErrorToastCopyWith(
          ShowErrorToast value, $Res Function(ShowErrorToast) _then) =
      _$ShowErrorToastCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ShowErrorToastCopyWithImpl<$Res>
    implements $ShowErrorToastCopyWith<$Res> {
  _$ShowErrorToastCopyWithImpl(this._self, this._then);

  final ShowErrorToast _self;
  final $Res Function(ShowErrorToast) _then;

  /// Create a copy of HomeSingleTimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
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
mixin _$HomeStatus {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeStatus()';
  }
}

/// @nodoc
class $HomeStatusCopyWith<$Res> {
  $HomeStatusCopyWith(HomeStatus _, $Res Function(HomeStatus) __);
}

/// Adds pattern-matching-related methods to [HomeStatus].
extension HomeStatusPatterns on HomeStatus {
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
    TResult Function(_LoadingMore value)? loadingMore,
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
      case _LoadingMore() when loadingMore != null:
        return loadingMore(_that);
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
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _LoadingMore():
        return loadingMore(_that);
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
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _LoadingMore() when loadingMore != null:
        return loadingMore(_that);
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
    TResult Function()? loadingMore,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _LoadingMore() when loadingMore != null:
        return loadingMore();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
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
    required TResult Function() loadingMore,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _LoadingMore():
        return loadingMore();
      case _Success():
        return success();
      case _Failure():
        return failure(_that.message);
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
    TResult? Function()? loadingMore,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _LoadingMore() when loadingMore != null:
        return loadingMore();
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements HomeStatus {
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
    return 'HomeStatus.initial()';
  }
}

/// @nodoc

class _Loading implements HomeStatus {
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
    return 'HomeStatus.loading()';
  }
}

/// @nodoc

class _LoadingMore implements HomeStatus {
  const _LoadingMore();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeStatus.loadingMore()';
  }
}

/// @nodoc

class _Success implements HomeStatus {
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
    return 'HomeStatus.success()';
  }
}

/// @nodoc

class _Failure implements HomeStatus {
  const _Failure({required this.message});

  final String message;

  /// Create a copy of HomeStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HomeStatus.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $HomeStatusCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of HomeStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Failure(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status;
  PaginatedMoviesResponse get paginatedMoviesResponse;
  int get currentIndex;
  bool get isDescriptionExpanded;
  HomeSingleTimeEvent? get singleTimeEvent;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.paginatedMoviesResponse, paginatedMoviesResponse) ||
                other.paginatedMoviesResponse == paginatedMoviesResponse) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isDescriptionExpanded, isDescriptionExpanded) ||
                other.isDescriptionExpanded == isDescriptionExpanded) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, paginatedMoviesResponse,
      currentIndex, isDescriptionExpanded, singleTimeEvent);

  @override
  String toString() {
    return 'HomeState(status: $status, paginatedMoviesResponse: $paginatedMoviesResponse, currentIndex: $currentIndex, isDescriptionExpanded: $isDescriptionExpanded, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {HomeStatus status,
      PaginatedMoviesResponse paginatedMoviesResponse,
      int currentIndex,
      bool isDescriptionExpanded,
      HomeSingleTimeEvent? singleTimeEvent});

  $HomeStatusCopyWith<$Res> get status;
  $PaginatedMoviesResponseCopyWith<$Res> get paginatedMoviesResponse;
  $HomeSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? paginatedMoviesResponse = null,
    Object? currentIndex = null,
    Object? isDescriptionExpanded = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      paginatedMoviesResponse: null == paginatedMoviesResponse
          ? _self.paginatedMoviesResponse
          : paginatedMoviesResponse // ignore: cast_nullable_to_non_nullable
              as PaginatedMoviesResponse,
      currentIndex: null == currentIndex
          ? _self.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isDescriptionExpanded: null == isDescriptionExpanded
          ? _self.isDescriptionExpanded
          : isDescriptionExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as HomeSingleTimeEvent?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeStatusCopyWith<$Res> get status {
    return $HomeStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedMoviesResponseCopyWith<$Res> get paginatedMoviesResponse {
    return $PaginatedMoviesResponseCopyWith<$Res>(_self.paginatedMoviesResponse,
        (value) {
      return _then(_self.copyWith(paginatedMoviesResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $HomeSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!, (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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
    TResult Function(_HomeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
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
    TResult Function(_HomeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState():
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
    TResult? Function(_HomeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
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
            HomeStatus status,
            PaginatedMoviesResponse paginatedMoviesResponse,
            int currentIndex,
            bool isDescriptionExpanded,
            HomeSingleTimeEvent? singleTimeEvent)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
        return $default(
            _that.status,
            _that.paginatedMoviesResponse,
            _that.currentIndex,
            _that.isDescriptionExpanded,
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
            HomeStatus status,
            PaginatedMoviesResponse paginatedMoviesResponse,
            int currentIndex,
            bool isDescriptionExpanded,
            HomeSingleTimeEvent? singleTimeEvent)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState():
        return $default(
            _that.status,
            _that.paginatedMoviesResponse,
            _that.currentIndex,
            _that.isDescriptionExpanded,
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
            HomeStatus status,
            PaginatedMoviesResponse paginatedMoviesResponse,
            int currentIndex,
            bool isDescriptionExpanded,
            HomeSingleTimeEvent? singleTimeEvent)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeState() when $default != null:
        return $default(
            _that.status,
            _that.paginatedMoviesResponse,
            _that.currentIndex,
            _that.isDescriptionExpanded,
            _that.singleTimeEvent);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState(
      {required this.status,
      required this.paginatedMoviesResponse,
      required this.currentIndex,
      required this.isDescriptionExpanded,
      this.singleTimeEvent});

  @override
  final HomeStatus status;
  @override
  final PaginatedMoviesResponse paginatedMoviesResponse;
  @override
  final int currentIndex;
  @override
  final bool isDescriptionExpanded;
  @override
  final HomeSingleTimeEvent? singleTimeEvent;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.paginatedMoviesResponse, paginatedMoviesResponse) ||
                other.paginatedMoviesResponse == paginatedMoviesResponse) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isDescriptionExpanded, isDescriptionExpanded) ||
                other.isDescriptionExpanded == isDescriptionExpanded) &&
            (identical(other.singleTimeEvent, singleTimeEvent) ||
                other.singleTimeEvent == singleTimeEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, paginatedMoviesResponse,
      currentIndex, isDescriptionExpanded, singleTimeEvent);

  @override
  String toString() {
    return 'HomeState(status: $status, paginatedMoviesResponse: $paginatedMoviesResponse, currentIndex: $currentIndex, isDescriptionExpanded: $isDescriptionExpanded, singleTimeEvent: $singleTimeEvent)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      PaginatedMoviesResponse paginatedMoviesResponse,
      int currentIndex,
      bool isDescriptionExpanded,
      HomeSingleTimeEvent? singleTimeEvent});

  @override
  $HomeStatusCopyWith<$Res> get status;
  @override
  $PaginatedMoviesResponseCopyWith<$Res> get paginatedMoviesResponse;
  @override
  $HomeSingleTimeEventCopyWith<$Res>? get singleTimeEvent;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? paginatedMoviesResponse = null,
    Object? currentIndex = null,
    Object? isDescriptionExpanded = null,
    Object? singleTimeEvent = freezed,
  }) {
    return _then(_HomeState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      paginatedMoviesResponse: null == paginatedMoviesResponse
          ? _self.paginatedMoviesResponse
          : paginatedMoviesResponse // ignore: cast_nullable_to_non_nullable
              as PaginatedMoviesResponse,
      currentIndex: null == currentIndex
          ? _self.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isDescriptionExpanded: null == isDescriptionExpanded
          ? _self.isDescriptionExpanded
          : isDescriptionExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      singleTimeEvent: freezed == singleTimeEvent
          ? _self.singleTimeEvent
          : singleTimeEvent // ignore: cast_nullable_to_non_nullable
              as HomeSingleTimeEvent?,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeStatusCopyWith<$Res> get status {
    return $HomeStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedMoviesResponseCopyWith<$Res> get paginatedMoviesResponse {
    return $PaginatedMoviesResponseCopyWith<$Res>(_self.paginatedMoviesResponse,
        (value) {
      return _then(_self.copyWith(paginatedMoviesResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeSingleTimeEventCopyWith<$Res>? get singleTimeEvent {
    if (_self.singleTimeEvent == null) {
      return null;
    }

    return $HomeSingleTimeEventCopyWith<$Res>(_self.singleTimeEvent!, (value) {
      return _then(_self.copyWith(singleTimeEvent: value));
    });
  }
}

// dart format on
