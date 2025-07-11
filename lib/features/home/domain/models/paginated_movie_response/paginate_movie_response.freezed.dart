// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedMoviesResponse {
  List<Movie> get movies;
  Pagination get pagination;

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatedMoviesResponseCopyWith<PaginatedMoviesResponse> get copyWith =>
      _$PaginatedMoviesResponseCopyWithImpl<PaginatedMoviesResponse>(
          this as PaginatedMoviesResponse, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatedMoviesResponse &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movies), pagination);

  @override
  String toString() {
    return 'PaginatedMoviesResponse(movies: $movies, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $PaginatedMoviesResponseCopyWith<$Res> {
  factory $PaginatedMoviesResponseCopyWith(PaginatedMoviesResponse value,
          $Res Function(PaginatedMoviesResponse) _then) =
      _$PaginatedMoviesResponseCopyWithImpl;
  @useResult
  $Res call({List<Movie> movies, Pagination pagination});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginatedMoviesResponseCopyWithImpl<$Res>
    implements $PaginatedMoviesResponseCopyWith<$Res> {
  _$PaginatedMoviesResponseCopyWithImpl(this._self, this._then);

  final PaginatedMoviesResponse _self;
  final $Res Function(PaginatedMoviesResponse) _then;

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? pagination = null,
  }) {
    return _then(_self.copyWith(
      movies: null == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PaginatedMoviesResponse].
extension PaginatedMoviesResponsePatterns on PaginatedMoviesResponse {
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
    TResult Function(_PaginatedMoviesResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse() when $default != null:
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
    TResult Function(_PaginatedMoviesResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse():
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
    TResult? Function(_PaginatedMoviesResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse() when $default != null:
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
    TResult Function(List<Movie> movies, Pagination pagination)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse() when $default != null:
        return $default(_that.movies, _that.pagination);
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
    TResult Function(List<Movie> movies, Pagination pagination) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse():
        return $default(_that.movies, _that.pagination);
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
    TResult? Function(List<Movie> movies, Pagination pagination)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedMoviesResponse() when $default != null:
        return $default(_that.movies, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginatedMoviesResponse extends PaginatedMoviesResponse {
  const _PaginatedMoviesResponse(
      {required final List<Movie> movies, required this.pagination})
      : _movies = movies,
        super._();

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final Pagination pagination;

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatedMoviesResponseCopyWith<_PaginatedMoviesResponse> get copyWith =>
      __$PaginatedMoviesResponseCopyWithImpl<_PaginatedMoviesResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedMoviesResponse &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movies), pagination);

  @override
  String toString() {
    return 'PaginatedMoviesResponse(movies: $movies, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$PaginatedMoviesResponseCopyWith<$Res>
    implements $PaginatedMoviesResponseCopyWith<$Res> {
  factory _$PaginatedMoviesResponseCopyWith(_PaginatedMoviesResponse value,
          $Res Function(_PaginatedMoviesResponse) _then) =
      __$PaginatedMoviesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<Movie> movies, Pagination pagination});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$PaginatedMoviesResponseCopyWithImpl<$Res>
    implements _$PaginatedMoviesResponseCopyWith<$Res> {
  __$PaginatedMoviesResponseCopyWithImpl(this._self, this._then);

  final _PaginatedMoviesResponse _self;
  final $Res Function(_PaginatedMoviesResponse) _then;

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movies = null,
    Object? pagination = null,
  }) {
    return _then(_PaginatedMoviesResponse(
      movies: null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  /// Create a copy of PaginatedMoviesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

// dart format on
