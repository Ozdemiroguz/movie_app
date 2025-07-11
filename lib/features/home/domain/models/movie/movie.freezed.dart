// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {
// --- MEVCUT ZORUNLU ALANLARINIZ (AYNEN KALIYOR) ---
  String get id;
  String get title;
  String get description;
  String get posterUrl;
  String get director;
  bool get isFavorite; // --- YENİ EKLENEN OPSİYONEL (NULLABLE) ALANLAR ---
  String? get year;
  String? get rated;
  String? get released;
  String? get runtime;
  String? get genre;
  String? get writer;
  String? get actors;
  String? get language;
  String? get country;
  String? get awards;
  String? get metascore;
  String? get imdbRating;
  String? get imdbVotes;
  String? get imdbID;
  String? get type;
  List<String> get images;
  bool get comingSoon;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieCopyWith<Movie> get copyWith =>
      _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rated, rated) || other.rated == rated) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.actors, actors) || other.actors == actors) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.awards, awards) || other.awards == awards) &&
            (identical(other.metascore, metascore) ||
                other.metascore == metascore) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.imdbVotes, imdbVotes) ||
                other.imdbVotes == imdbVotes) &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.comingSoon, comingSoon) ||
                other.comingSoon == comingSoon));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        posterUrl,
        director,
        isFavorite,
        year,
        rated,
        released,
        runtime,
        genre,
        writer,
        actors,
        language,
        country,
        awards,
        metascore,
        imdbRating,
        imdbVotes,
        imdbID,
        type,
        const DeepCollectionEquality().hash(images),
        comingSoon
      ]);

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, isFavorite: $isFavorite, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, writer: $writer, actors: $actors, language: $language, country: $country, awards: $awards, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, images: $images, comingSoon: $comingSoon)';
  }
}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) =
      _$MovieCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String posterUrl,
      String director,
      bool isFavorite,
      String? year,
      String? rated,
      String? released,
      String? runtime,
      String? genre,
      String? writer,
      String? actors,
      String? language,
      String? country,
      String? awards,
      String? metascore,
      String? imdbRating,
      String? imdbVotes,
      String? imdbID,
      String? type,
      List<String> images,
      bool comingSoon});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? posterUrl = null,
    Object? director = null,
    Object? isFavorite = null,
    Object? year = freezed,
    Object? rated = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? genre = freezed,
    Object? writer = freezed,
    Object? actors = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? awards = freezed,
    Object? metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbID = freezed,
    Object? type = freezed,
    Object? images = null,
    Object? comingSoon = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _self.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _self.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: freezed == rated
          ? _self.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _self.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: freezed == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: freezed == actors
          ? _self.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      awards: freezed == awards
          ? _self.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      metascore: freezed == metascore
          ? _self.metascore
          : metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: freezed == imdbRating
          ? _self.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: freezed == imdbVotes
          ? _self.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbID: freezed == imdbID
          ? _self.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comingSoon: null == comingSoon
          ? _self.comingSoon
          : comingSoon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
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
    TResult Function(_Movie value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
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
    TResult Function(_Movie value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie():
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
    TResult? Function(_Movie value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
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
            String id,
            String title,
            String description,
            String posterUrl,
            String director,
            bool isFavorite,
            String? year,
            String? rated,
            String? released,
            String? runtime,
            String? genre,
            String? writer,
            String? actors,
            String? language,
            String? country,
            String? awards,
            String? metascore,
            String? imdbRating,
            String? imdbVotes,
            String? imdbID,
            String? type,
            List<String> images,
            bool comingSoon)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.posterUrl,
            _that.director,
            _that.isFavorite,
            _that.year,
            _that.rated,
            _that.released,
            _that.runtime,
            _that.genre,
            _that.writer,
            _that.actors,
            _that.language,
            _that.country,
            _that.awards,
            _that.metascore,
            _that.imdbRating,
            _that.imdbVotes,
            _that.imdbID,
            _that.type,
            _that.images,
            _that.comingSoon);
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
            String id,
            String title,
            String description,
            String posterUrl,
            String director,
            bool isFavorite,
            String? year,
            String? rated,
            String? released,
            String? runtime,
            String? genre,
            String? writer,
            String? actors,
            String? language,
            String? country,
            String? awards,
            String? metascore,
            String? imdbRating,
            String? imdbVotes,
            String? imdbID,
            String? type,
            List<String> images,
            bool comingSoon)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.posterUrl,
            _that.director,
            _that.isFavorite,
            _that.year,
            _that.rated,
            _that.released,
            _that.runtime,
            _that.genre,
            _that.writer,
            _that.actors,
            _that.language,
            _that.country,
            _that.awards,
            _that.metascore,
            _that.imdbRating,
            _that.imdbVotes,
            _that.imdbID,
            _that.type,
            _that.images,
            _that.comingSoon);
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
            String id,
            String title,
            String description,
            String posterUrl,
            String director,
            bool isFavorite,
            String? year,
            String? rated,
            String? released,
            String? runtime,
            String? genre,
            String? writer,
            String? actors,
            String? language,
            String? country,
            String? awards,
            String? metascore,
            String? imdbRating,
            String? imdbVotes,
            String? imdbID,
            String? type,
            List<String> images,
            bool comingSoon)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Movie() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.posterUrl,
            _that.director,
            _that.isFavorite,
            _that.year,
            _that.rated,
            _that.released,
            _that.runtime,
            _that.genre,
            _that.writer,
            _that.actors,
            _that.language,
            _that.country,
            _that.awards,
            _that.metascore,
            _that.imdbRating,
            _that.imdbVotes,
            _that.imdbID,
            _that.type,
            _that.images,
            _that.comingSoon);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Movie extends Movie {
  const _Movie(
      {required this.id,
      required this.title,
      required this.description,
      required this.posterUrl,
      required this.director,
      this.isFavorite = false,
      this.year,
      this.rated,
      this.released,
      this.runtime,
      this.genre,
      this.writer,
      this.actors,
      this.language,
      this.country,
      this.awards,
      this.metascore,
      this.imdbRating,
      this.imdbVotes,
      this.imdbID,
      this.type,
      final List<String> images = const [],
      this.comingSoon = false})
      : _images = images,
        super._();

// --- MEVCUT ZORUNLU ALANLARINIZ (AYNEN KALIYOR) ---
  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String posterUrl;
  @override
  final String director;
  @override
  @JsonKey()
  final bool isFavorite;
// --- YENİ EKLENEN OPSİYONEL (NULLABLE) ALANLAR ---
  @override
  final String? year;
  @override
  final String? rated;
  @override
  final String? released;
  @override
  final String? runtime;
  @override
  final String? genre;
  @override
  final String? writer;
  @override
  final String? actors;
  @override
  final String? language;
  @override
  final String? country;
  @override
  final String? awards;
  @override
  final String? metascore;
  @override
  final String? imdbRating;
  @override
  final String? imdbVotes;
  @override
  final String? imdbID;
  @override
  final String? type;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool comingSoon;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rated, rated) || other.rated == rated) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.writer, writer) || other.writer == writer) &&
            (identical(other.actors, actors) || other.actors == actors) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.awards, awards) || other.awards == awards) &&
            (identical(other.metascore, metascore) ||
                other.metascore == metascore) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.imdbVotes, imdbVotes) ||
                other.imdbVotes == imdbVotes) &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.comingSoon, comingSoon) ||
                other.comingSoon == comingSoon));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        posterUrl,
        director,
        isFavorite,
        year,
        rated,
        released,
        runtime,
        genre,
        writer,
        actors,
        language,
        country,
        awards,
        metascore,
        imdbRating,
        imdbVotes,
        imdbID,
        type,
        const DeepCollectionEquality().hash(_images),
        comingSoon
      ]);

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, description: $description, posterUrl: $posterUrl, director: $director, isFavorite: $isFavorite, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, writer: $writer, actors: $actors, language: $language, country: $country, awards: $awards, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, images: $images, comingSoon: $comingSoon)';
  }
}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) =
      __$MovieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String posterUrl,
      String director,
      bool isFavorite,
      String? year,
      String? rated,
      String? released,
      String? runtime,
      String? genre,
      String? writer,
      String? actors,
      String? language,
      String? country,
      String? awards,
      String? metascore,
      String? imdbRating,
      String? imdbVotes,
      String? imdbID,
      String? type,
      List<String> images,
      bool comingSoon});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? posterUrl = null,
    Object? director = null,
    Object? isFavorite = null,
    Object? year = freezed,
    Object? rated = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? genre = freezed,
    Object? writer = freezed,
    Object? actors = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? awards = freezed,
    Object? metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbID = freezed,
    Object? type = freezed,
    Object? images = null,
    Object? comingSoon = null,
  }) {
    return _then(_Movie(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _self.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _self.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: freezed == rated
          ? _self.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _self.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: freezed == runtime
          ? _self.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: freezed == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: freezed == writer
          ? _self.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: freezed == actors
          ? _self.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      awards: freezed == awards
          ? _self.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      metascore: freezed == metascore
          ? _self.metascore
          : metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: freezed == imdbRating
          ? _self.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: freezed == imdbVotes
          ? _self.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbID: freezed == imdbID
          ? _self.imdbID
          : imdbID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comingSoon: null == comingSoon
          ? _self.comingSoon
          : comingSoon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
