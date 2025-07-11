import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../services/logger/logger_service.dart';
import '../../domain/datasources/movies_remote_data_source.dart';
import '../../../../core/models/movie/movie.dart';
import '../../domain/models/paginated_movie_response/paginate_movie_response.dart';
import '../../domain/repositories/movie_repository.dart';

@LazySingleton(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource _remoteDataSource;
  final LoggerService _logger;

  final _favoriteMoviesController =
      BehaviorSubject<Either<Failure, List<Movie>>>();

  List<Movie> _currentFavoritesCache = [];

  MoviesRepositoryImpl(this._remoteDataSource, this._logger) {
    _fetchAndBroadcastFavorites();
  }

  Future<void> _fetchAndBroadcastFavorites() async {
    final result = await _remoteDataSource.fetchFavoriteMovies();
    result.fold(
      (failure) {
        _logger.e('Failed to fetch favorite movies from remote data source.',
            error: failure);
        _favoriteMoviesController.add(left(failure));
      },
      (movies) {
        _logger
            .i('Successfully fetched favorite movies from remote data source.');
        _currentFavoritesCache = movies;
        _favoriteMoviesController.add(right(_currentFavoritesCache));
      },
    );
  }

  @override
  Stream<Either<Failure, List<Movie>>> watchFavoriteMovies() {
    return _favoriteMoviesController.stream;
  }

  @override
  Future<Either<Failure, PaginatedMoviesResponse>> getPaginatedMovies(
      {required int page}) {
    return _remoteDataSource.getPaginatedMovies(page: page);
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoriteMovies() {
    return _remoteDataSource.fetchFavoriteMovies();
  }

  @override
  Future<Option<Failure>> toggleFavorite({required String movieId}) async {
    final result = await _remoteDataSource.toggleFavorite(movieId: movieId);

    return await result.fold(
      () async {
        _logger.i(
            'Successfully toggled favorite status for movie ID: $movieId. Refreshing favorite list.');
        await _fetchAndBroadcastFavorites();
        return none();
      },
      (failure) {
        _logger.e('Failed to toggle favorite status for movie ID: $movieId.',
            error: failure);
        return some(failure);
      },
    );
  }

  void dispose() {
    _favoriteMoviesController.close();
  }

  @override
  void clearCache() {
    _logger.i('Clearing favorite movies cache.');
    _currentFavoritesCache = [];
    _favoriteMoviesController.add(right([]));
  }

  @override
  Future<void> refreshFavoriteMovies() async {
    _logger.i('Refreshing favorite movies.');
    clearCache();
    await _fetchAndBroadcastFavorites();
  }
}
