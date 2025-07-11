// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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
    TResult Function(Initialized value)? initialized,
    TResult Function(MoreMoviesFetched value)? moreMoviesFetched,
    TResult Function(PageChanged value)? pageChanged,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    TResult Function(DescriptionVisibilityChanged value)?
        descriptionVisibilityChanged,
    TResult Function(OnFavoritesChanged value)? onFavoritesChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that);
      case MoreMoviesFetched() when moreMoviesFetched != null:
        return moreMoviesFetched(_that);
      case PageChanged() when pageChanged != null:
        return pageChanged(_that);
      case FavoriteToggled() when favoriteToggled != null:
        return favoriteToggled(_that);
      case DescriptionVisibilityChanged()
          when descriptionVisibilityChanged != null:
        return descriptionVisibilityChanged(_that);
      case OnFavoritesChanged() when onFavoritesChanged != null:
        return onFavoritesChanged(_that);
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(MoreMoviesFetched value) moreMoviesFetched,
    required TResult Function(PageChanged value) pageChanged,
    required TResult Function(FavoriteToggled value) favoriteToggled,
    required TResult Function(DescriptionVisibilityChanged value)
        descriptionVisibilityChanged,
    required TResult Function(OnFavoritesChanged value) onFavoritesChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized():
        return initialized(_that);
      case MoreMoviesFetched():
        return moreMoviesFetched(_that);
      case PageChanged():
        return pageChanged(_that);
      case FavoriteToggled():
        return favoriteToggled(_that);
      case DescriptionVisibilityChanged():
        return descriptionVisibilityChanged(_that);
      case OnFavoritesChanged():
        return onFavoritesChanged(_that);
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
    TResult? Function(Initialized value)? initialized,
    TResult? Function(MoreMoviesFetched value)? moreMoviesFetched,
    TResult? Function(PageChanged value)? pageChanged,
    TResult? Function(FavoriteToggled value)? favoriteToggled,
    TResult? Function(DescriptionVisibilityChanged value)?
        descriptionVisibilityChanged,
    TResult? Function(OnFavoritesChanged value)? onFavoritesChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that);
      case MoreMoviesFetched() when moreMoviesFetched != null:
        return moreMoviesFetched(_that);
      case PageChanged() when pageChanged != null:
        return pageChanged(_that);
      case FavoriteToggled() when favoriteToggled != null:
        return favoriteToggled(_that);
      case DescriptionVisibilityChanged()
          when descriptionVisibilityChanged != null:
        return descriptionVisibilityChanged(_that);
      case OnFavoritesChanged() when onFavoritesChanged != null:
        return onFavoritesChanged(_that);
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
    TResult Function(Completer<void>? completer)? initialized,
    TResult Function()? moreMoviesFetched,
    TResult Function(int newIndex)? pageChanged,
    TResult Function(String movieId)? favoriteToggled,
    TResult Function(bool isExpanded)? descriptionVisibilityChanged,
    TResult Function(List<Movie> favoriteMovies)? onFavoritesChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that.completer);
      case MoreMoviesFetched() when moreMoviesFetched != null:
        return moreMoviesFetched();
      case PageChanged() when pageChanged != null:
        return pageChanged(_that.newIndex);
      case FavoriteToggled() when favoriteToggled != null:
        return favoriteToggled(_that.movieId);
      case DescriptionVisibilityChanged()
          when descriptionVisibilityChanged != null:
        return descriptionVisibilityChanged(_that.isExpanded);
      case OnFavoritesChanged() when onFavoritesChanged != null:
        return onFavoritesChanged(_that.favoriteMovies);
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
    required TResult Function(Completer<void>? completer) initialized,
    required TResult Function() moreMoviesFetched,
    required TResult Function(int newIndex) pageChanged,
    required TResult Function(String movieId) favoriteToggled,
    required TResult Function(bool isExpanded) descriptionVisibilityChanged,
    required TResult Function(List<Movie> favoriteMovies) onFavoritesChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized():
        return initialized(_that.completer);
      case MoreMoviesFetched():
        return moreMoviesFetched();
      case PageChanged():
        return pageChanged(_that.newIndex);
      case FavoriteToggled():
        return favoriteToggled(_that.movieId);
      case DescriptionVisibilityChanged():
        return descriptionVisibilityChanged(_that.isExpanded);
      case OnFavoritesChanged():
        return onFavoritesChanged(_that.favoriteMovies);
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
    TResult? Function(Completer<void>? completer)? initialized,
    TResult? Function()? moreMoviesFetched,
    TResult? Function(int newIndex)? pageChanged,
    TResult? Function(String movieId)? favoriteToggled,
    TResult? Function(bool isExpanded)? descriptionVisibilityChanged,
    TResult? Function(List<Movie> favoriteMovies)? onFavoritesChanged,
  }) {
    final _that = this;
    switch (_that) {
      case Initialized() when initialized != null:
        return initialized(_that.completer);
      case MoreMoviesFetched() when moreMoviesFetched != null:
        return moreMoviesFetched();
      case PageChanged() when pageChanged != null:
        return pageChanged(_that.newIndex);
      case FavoriteToggled() when favoriteToggled != null:
        return favoriteToggled(_that.movieId);
      case DescriptionVisibilityChanged()
          when descriptionVisibilityChanged != null:
        return descriptionVisibilityChanged(_that.isExpanded);
      case OnFavoritesChanged() when onFavoritesChanged != null:
        return onFavoritesChanged(_that.favoriteMovies);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initialized implements HomeEvent {
  const Initialized({this.completer});

  final Completer<void>? completer;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @override
  String toString() {
    return 'HomeEvent.initialized(completer: $completer)';
  }
}

/// @nodoc
abstract mixin class $InitializedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) _then) =
      _$InitializedCopyWithImpl;
  @useResult
  $Res call({Completer<void>? completer});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(this._self, this._then);

  final Initialized _self;
  final $Res Function(Initialized) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(Initialized(
      completer: freezed == completer
          ? _self.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<void>?,
    ));
  }
}

/// @nodoc

class MoreMoviesFetched implements HomeEvent {
  const MoreMoviesFetched();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoreMoviesFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.moreMoviesFetched()';
  }
}

/// @nodoc

class PageChanged implements HomeEvent {
  const PageChanged({required this.newIndex});

  final int newIndex;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageChangedCopyWith<PageChanged> get copyWith =>
      _$PageChangedCopyWithImpl<PageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageChanged &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newIndex);

  @override
  String toString() {
    return 'HomeEvent.pageChanged(newIndex: $newIndex)';
  }
}

/// @nodoc
abstract mixin class $PageChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $PageChangedCopyWith(
          PageChanged value, $Res Function(PageChanged) _then) =
      _$PageChangedCopyWithImpl;
  @useResult
  $Res call({int newIndex});
}

/// @nodoc
class _$PageChangedCopyWithImpl<$Res> implements $PageChangedCopyWith<$Res> {
  _$PageChangedCopyWithImpl(this._self, this._then);

  final PageChanged _self;
  final $Res Function(PageChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newIndex = null,
  }) {
    return _then(PageChanged(
      newIndex: null == newIndex
          ? _self.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class FavoriteToggled implements HomeEvent {
  const FavoriteToggled({required this.movieId});

  final String movieId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteToggledCopyWith<FavoriteToggled> get copyWith =>
      _$FavoriteToggledCopyWithImpl<FavoriteToggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteToggled &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @override
  String toString() {
    return 'HomeEvent.favoriteToggled(movieId: $movieId)';
  }
}

/// @nodoc
abstract mixin class $FavoriteToggledCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $FavoriteToggledCopyWith(
          FavoriteToggled value, $Res Function(FavoriteToggled) _then) =
      _$FavoriteToggledCopyWithImpl;
  @useResult
  $Res call({String movieId});
}

/// @nodoc
class _$FavoriteToggledCopyWithImpl<$Res>
    implements $FavoriteToggledCopyWith<$Res> {
  _$FavoriteToggledCopyWithImpl(this._self, this._then);

  final FavoriteToggled _self;
  final $Res Function(FavoriteToggled) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movieId = null,
  }) {
    return _then(FavoriteToggled(
      movieId: null == movieId
          ? _self.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DescriptionVisibilityChanged implements HomeEvent {
  const DescriptionVisibilityChanged({required this.isExpanded});

  final bool isExpanded;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DescriptionVisibilityChangedCopyWith<DescriptionVisibilityChanged>
      get copyWith => _$DescriptionVisibilityChangedCopyWithImpl<
          DescriptionVisibilityChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DescriptionVisibilityChanged &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExpanded);

  @override
  String toString() {
    return 'HomeEvent.descriptionVisibilityChanged(isExpanded: $isExpanded)';
  }
}

/// @nodoc
abstract mixin class $DescriptionVisibilityChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $DescriptionVisibilityChangedCopyWith(
          DescriptionVisibilityChanged value,
          $Res Function(DescriptionVisibilityChanged) _then) =
      _$DescriptionVisibilityChangedCopyWithImpl;
  @useResult
  $Res call({bool isExpanded});
}

/// @nodoc
class _$DescriptionVisibilityChangedCopyWithImpl<$Res>
    implements $DescriptionVisibilityChangedCopyWith<$Res> {
  _$DescriptionVisibilityChangedCopyWithImpl(this._self, this._then);

  final DescriptionVisibilityChanged _self;
  final $Res Function(DescriptionVisibilityChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isExpanded = null,
  }) {
    return _then(DescriptionVisibilityChanged(
      isExpanded: null == isExpanded
          ? _self.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class OnFavoritesChanged implements HomeEvent {
  const OnFavoritesChanged({required final List<Movie> favoriteMovies})
      : _favoriteMovies = favoriteMovies;

  final List<Movie> _favoriteMovies;
  List<Movie> get favoriteMovies {
    if (_favoriteMovies is EqualUnmodifiableListView) return _favoriteMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteMovies);
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnFavoritesChangedCopyWith<OnFavoritesChanged> get copyWith =>
      _$OnFavoritesChangedCopyWithImpl<OnFavoritesChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnFavoritesChanged &&
            const DeepCollectionEquality()
                .equals(other._favoriteMovies, _favoriteMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteMovies));

  @override
  String toString() {
    return 'HomeEvent.onFavoritesChanged(favoriteMovies: $favoriteMovies)';
  }
}

/// @nodoc
abstract mixin class $OnFavoritesChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $OnFavoritesChangedCopyWith(
          OnFavoritesChanged value, $Res Function(OnFavoritesChanged) _then) =
      _$OnFavoritesChangedCopyWithImpl;
  @useResult
  $Res call({List<Movie> favoriteMovies});
}

/// @nodoc
class _$OnFavoritesChangedCopyWithImpl<$Res>
    implements $OnFavoritesChangedCopyWith<$Res> {
  _$OnFavoritesChangedCopyWithImpl(this._self, this._then);

  final OnFavoritesChanged _self;
  final $Res Function(OnFavoritesChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favoriteMovies = null,
  }) {
    return _then(OnFavoritesChanged(
      favoriteMovies: null == favoriteMovies
          ? _self._favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

// dart format on
