// lib/features/movies/domain/models/movie.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
// .g.dart'ı kullanmıyoruz çünkü fromJson'ı manuel yazıyoruz.

@freezed
abstract class Movie with _$Movie {
  const Movie._();

  const factory Movie({
    // --- MEVCUT ZORUNLU ALANLARINIZ (AYNEN KALIYOR) ---
    required String id,
    required String title,
    required String description,
    required String posterUrl,
    required String director,
    @Default(false) bool isFavorite,

    // --- YENİ EKLENEN OPSİYONEL (NULLABLE) ALANLAR ---
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
    @Default([]) List<String> images,
    @Default(false) bool comingSoon,
  }) = _Movie;

  /// fromJson metodunu, yeni alanları da içerecek şekilde güncelliyoruz.
  /// Mevcut alanların okunma mantığına DOKUNULMADI.
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      // --- MEVCUT ALANLARIN OKUNMASI (AYNEN KALIYOR) ---
      id: (json['id'] ?? json['_id'])?.toString() ?? '',
      title: (json['Title'] as String?) ?? '',
      description: (json['Plot'] as String?) ?? '',
      posterUrl: (json['Poster'] as String?) ?? '',
      director: (json['Director'] as String?) ?? '',
      isFavorite: json['isFavorite'] as bool? ?? false,

      year: json['Year'] as String?,
      rated: json['Rated'] as String?,
      released: json['Released'] as String?,
      runtime: json['Runtime'] as String?,
      genre: json['Genre'] as String?,
      writer: json['Writer'] as String?,
      actors: json['Actors'] as String?,
      language: json['Language'] as String?,
      country: json['Country'] as String?,
      awards: json['Awards'] as String?,
      metascore: json['Metascore'] as String?,
      imdbRating: json['imdbRating'] as String?,
      imdbVotes: json['imdbVotes'] as String?,
      imdbID: json['imdbID'] as String?,
      type: json['Type'] as String?,
      images: (json['Images'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
      comingSoon: json['ComingSoon'] as bool? ?? false,
    );
  }
}
