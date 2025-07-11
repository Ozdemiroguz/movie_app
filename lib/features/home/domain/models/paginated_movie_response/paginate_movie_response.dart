import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/pagination/pagination.dart';
import '../../../../../core/models/movie/movie.dart';

part 'paginate_movie_response.freezed.dart';

@freezed
abstract class PaginatedMoviesResponse with _$PaginatedMoviesResponse {
  const PaginatedMoviesResponse._();

  const factory PaginatedMoviesResponse({
    required List<Movie> movies,
    required Pagination pagination,
  }) = _PaginatedMoviesResponse;

  factory PaginatedMoviesResponse.fromJson(Map<String, dynamic> json) {
    final moviesListJson = json['movies'] as List<dynamic>? ?? [];
    final movies = moviesListJson
        .map((movieJson) => Movie.fromJson(movieJson as Map<String, dynamic>))
        .toList();

    final paginationJson = json['pagination'] as Map<String, dynamic>? ?? {};

    return PaginatedMoviesResponse(
      movies: movies,
      pagination: Pagination.fromJson(paginationJson),
    );
  }

  factory PaginatedMoviesResponse.initial() => PaginatedMoviesResponse(
        movies: [],
        pagination: Pagination(
          currentPage: 1,
          totalPages: 1,
        ),
      );
}
