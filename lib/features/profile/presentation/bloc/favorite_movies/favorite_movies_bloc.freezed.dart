// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteMoviesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoriteMoviesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteMoviesEvent()';
  }
}

/// @nodoc
class $FavoriteMoviesEventCopyWith<$Res> {
  $FavoriteMoviesEventCopyWith(
      FavoriteMoviesEvent _, $Res Function(FavoriteMoviesEvent) __);
}

/// Adds pattern-matching-related methods to [FavoriteMoviesEvent].
extension FavoriteMoviesEventPatterns on FavoriteMoviesEvent {
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
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    TResult Function(_FavoritesUpdated value)? favoritesUpdated,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested() when subscriptionRequested != null:
        return subscriptionRequested(_that);
      case _FavoritesUpdated() when favoritesUpdated != null:
        return favoritesUpdated(_that);
      case _ToggleFavorite() when toggleFavorite != null:
        return toggleFavorite(_that);
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
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
    required TResult Function(_FavoritesUpdated value) favoritesUpdated,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested():
        return subscriptionRequested(_that);
      case _FavoritesUpdated():
        return favoritesUpdated(_that);
      case _ToggleFavorite():
        return toggleFavorite(_that);
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
    TResult? Function(_SubscriptionRequested value)? subscriptionRequested,
    TResult? Function(_FavoritesUpdated value)? favoritesUpdated,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested() when subscriptionRequested != null:
        return subscriptionRequested(_that);
      case _FavoritesUpdated() when favoritesUpdated != null:
        return favoritesUpdated(_that);
      case _ToggleFavorite() when toggleFavorite != null:
        return toggleFavorite(_that);
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
    TResult Function()? subscriptionRequested,
    TResult Function(Either<Failure, List<Movie>> movies)? favoritesUpdated,
    TResult Function(String movieId)? toggleFavorite,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested() when subscriptionRequested != null:
        return subscriptionRequested();
      case _FavoritesUpdated() when favoritesUpdated != null:
        return favoritesUpdated(_that.movies);
      case _ToggleFavorite() when toggleFavorite != null:
        return toggleFavorite(_that.movieId);
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
    required TResult Function() subscriptionRequested,
    required TResult Function(Either<Failure, List<Movie>> movies)
        favoritesUpdated,
    required TResult Function(String movieId) toggleFavorite,
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested():
        return subscriptionRequested();
      case _FavoritesUpdated():
        return favoritesUpdated(_that.movies);
      case _ToggleFavorite():
        return toggleFavorite(_that.movieId);
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
    TResult? Function()? subscriptionRequested,
    TResult? Function(Either<Failure, List<Movie>> movies)? favoritesUpdated,
    TResult? Function(String movieId)? toggleFavorite,
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionRequested() when subscriptionRequested != null:
        return subscriptionRequested();
      case _FavoritesUpdated() when favoritesUpdated != null:
        return favoritesUpdated(_that.movies);
      case _ToggleFavorite() when toggleFavorite != null:
        return toggleFavorite(_that.movieId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SubscriptionRequested implements FavoriteMoviesEvent {
  const _SubscriptionRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SubscriptionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteMoviesEvent.subscriptionRequested()';
  }
}

/// @nodoc

class _FavoritesUpdated implements FavoriteMoviesEvent {
  const _FavoritesUpdated(this.movies);

  final Either<Failure, List<Movie>> movies;

  /// Create a copy of FavoriteMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoritesUpdatedCopyWith<_FavoritesUpdated> get copyWith =>
      __$FavoritesUpdatedCopyWithImpl<_FavoritesUpdated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoritesUpdated &&
            (identical(other.movies, movies) || other.movies == movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies);

  @override
  String toString() {
    return 'FavoriteMoviesEvent.favoritesUpdated(movies: $movies)';
  }
}

/// @nodoc
abstract mixin class _$FavoritesUpdatedCopyWith<$Res>
    implements $FavoriteMoviesEventCopyWith<$Res> {
  factory _$FavoritesUpdatedCopyWith(
          _FavoritesUpdated value, $Res Function(_FavoritesUpdated) _then) =
      __$FavoritesUpdatedCopyWithImpl;
  @useResult
  $Res call({Either<Failure, List<Movie>> movies});
}

/// @nodoc
class __$FavoritesUpdatedCopyWithImpl<$Res>
    implements _$FavoritesUpdatedCopyWith<$Res> {
  __$FavoritesUpdatedCopyWithImpl(this._self, this._then);

  final _FavoritesUpdated _self;
  final $Res Function(_FavoritesUpdated) _then;

  /// Create a copy of FavoriteMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movies = null,
  }) {
    return _then(_FavoritesUpdated(
      null == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Movie>>,
    ));
  }
}

/// @nodoc

class _ToggleFavorite implements FavoriteMoviesEvent {
  const _ToggleFavorite({required this.movieId});

  final String movieId;

  /// Create a copy of FavoriteMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith =>
      __$ToggleFavoriteCopyWithImpl<_ToggleFavorite>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleFavorite &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @override
  String toString() {
    return 'FavoriteMoviesEvent.toggleFavorite(movieId: $movieId)';
  }
}

/// @nodoc
abstract mixin class _$ToggleFavoriteCopyWith<$Res>
    implements $FavoriteMoviesEventCopyWith<$Res> {
  factory _$ToggleFavoriteCopyWith(
          _ToggleFavorite value, $Res Function(_ToggleFavorite) _then) =
      __$ToggleFavoriteCopyWithImpl;
  @useResult
  $Res call({String movieId});
}

/// @nodoc
class __$ToggleFavoriteCopyWithImpl<$Res>
    implements _$ToggleFavoriteCopyWith<$Res> {
  __$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final _ToggleFavorite _self;
  final $Res Function(_ToggleFavorite) _then;

  /// Create a copy of FavoriteMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_ToggleFavorite(
      movieId: null == movieId
          ? _self.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$FavoriteMoviesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoriteMoviesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteMoviesState()';
  }
}

/// @nodoc
class $FavoriteMoviesStateCopyWith<$Res> {
  $FavoriteMoviesStateCopyWith(
      FavoriteMoviesState _, $Res Function(FavoriteMoviesState) __);
}

/// Adds pattern-matching-related methods to [FavoriteMoviesState].
extension FavoriteMoviesStatePatterns on FavoriteMoviesState {
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
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Error() when error != null:
        return error(_that);
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Loaded():
        return loaded(_that);
      case _Error():
        return error(_that);
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
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Error() when error != null:
        return error(_that);
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
    TResult Function(List<Movie> movies)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Loaded() when loaded != null:
        return loaded(_that.movies);
      case _Error() when error != null:
        return error(_that.failure);
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
    required TResult Function(List<Movie> movies) loaded,
    required TResult Function(Failure failure) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _Loaded():
        return loaded(_that.movies);
      case _Error():
        return error(_that.failure);
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
    TResult? Function(List<Movie> movies)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Loaded() when loaded != null:
        return loaded(_that.movies);
      case _Error() when error != null:
        return error(_that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements FavoriteMoviesState {
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
    return 'FavoriteMoviesState.initial()';
  }
}

/// @nodoc

class _Loading implements FavoriteMoviesState {
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
    return 'FavoriteMoviesState.loading()';
  }
}

/// @nodoc

class _Loaded implements FavoriteMoviesState {
  const _Loaded({required final List<Movie> movies}) : _movies = movies;

  final List<Movie> _movies;
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  /// Create a copy of FavoriteMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @override
  String toString() {
    return 'FavoriteMoviesState.loaded(movies: $movies)';
  }
}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res>
    implements $FavoriteMoviesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) =
      __$LoadedCopyWithImpl;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

  /// Create a copy of FavoriteMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movies = null,
  }) {
    return _then(_Loaded(
      movies: null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _Error implements FavoriteMoviesState {
  const _Error({required this.failure});

  final Failure failure;

  /// Create a copy of FavoriteMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'FavoriteMoviesState.error(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $FavoriteMoviesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of FavoriteMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(_Error(
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of FavoriteMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_self.failure, (value) {
      return _then(_self.copyWith(failure: value));
    });
  }
}

// dart format on
