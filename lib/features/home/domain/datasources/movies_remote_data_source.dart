// lib/features/movies/domain/datasources/movies_remote_data_source.dart

import 'package:fpdart/fpdart.dart';
import 'package:test_case/features/home/domain/models/movie/movie.dart';
import 'package:test_case/features/home/domain/models/paginated_movie_response/paginate_movie_response.dart';
import '../../../../core/models/failure/failure.dart';

abstract interface class MoviesRemoteDataSource {
  Future<Either<Failure, PaginatedMoviesResponse>> getPaginatedMovies(
      {required int page});
  Future<Either<Failure, List<Movie>>> fetchFavoriteMovies();
  Future<Option<Failure>> toggleFavorite({required String movieId});
}
