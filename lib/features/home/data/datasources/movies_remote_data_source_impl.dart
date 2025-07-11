// lib/features/movies/data/datasources/movies_remote_data_source_impl.dart

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/api_endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../services/network/network_service.dart';
import '../../../../services/logger/logger_service.dart';
import '../../domain/datasources/movies_remote_data_source.dart';
import '../../../../core/models/movie/movie.dart';
import '../../domain/models/paginated_movie_response/paginate_movie_response.dart';

@LazySingleton(as: MoviesRemoteDataSource)
class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final NetworkService _networkService;
  final LoggerService _logger;
  const MoviesRemoteDataSourceImpl(this._networkService, this._logger);

  @override
  Future<Either<Failure, PaginatedMoviesResponse>> getPaginatedMovies(
      {required int page}) async {
    final result = await _networkService.get(
      Endpoints.movies,
      queryParameters: {'page': page},
    );

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final innerData = response.data?['data'];
          if (innerData == null) {
            return left(const Failure.unknownError(
                "Data field is missing in response."));
          }
          final paginatedResponse = PaginatedMoviesResponse.fromJson(innerData);
          return right(paginatedResponse);
        } catch (e, s) {
          _logger.e("Failed to parse paginated movies: $e",
              error: e, stackTrace: s);
          return left(
              Failure.unknownError("Failed to parse paginated movies: $e"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<Movie>>> fetchFavoriteMovies() async {
    final result = await _networkService.get(Endpoints.favorites);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final moviesData = response.data?['data'] as List?;
          if (moviesData == null) {
            return left(
                const Failure.unknownError("Favorite movies data is missing."));
          }
          final movies = moviesData
              .map((movieJson) =>
                  Movie.fromJson(movieJson as Map<String, dynamic>))
              .toList();
          return right(movies);
        } catch (e, s) {
          _logger.e("Failed to parse favorite movies: $e",
              error: e, stackTrace: s);
          return left(
              Failure.unknownError("Failed to parse favorite movies: $e"));
        }
      },
    );
  }

  @override
  Future<Option<Failure>> toggleFavorite({required String movieId}) async {
    final url = Endpoints.favoriteMovie(movieId);
    final result = await _networkService.post(url);

    return result.fold(
      (failure) => some(failure),
      (_) => none(),
    );
  }
}
