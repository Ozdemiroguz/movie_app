// lib/features/movies/data/repositories/movies_repository_impl.dart

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/datasources/movies_remote_data_source.dart';
import '../../domain/models/movie/movie.dart';
import '../../domain/models/paginated_movie_response/paginate_movie_response.dart';
import '../../domain/repositories/movie_repository.dart';

@LazySingleton(as: MoviesRepository)
class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource _remoteDataSource;

  final _favoriteMoviesController =
      BehaviorSubject<Either<Failure, List<Movie>>>();

  List<Movie> _currentFavoritesCache = [];

  // İleride buraya bir de localDataSource eklenebilir.
  MoviesRepositoryImpl(this._remoteDataSource) {
    // Repository oluşturulur oluşturulmaz ilk favori listesini çek ve stream'e bas.
    _fetchAndBroadcastFavorites();
  }

  // Bu özel metod, favorileri çeker ve hem cache'i hem de stream'i günceller.
  Future<void> _fetchAndBroadcastFavorites() async {
    final result = await _remoteDataSource.fetchFavoriteMovies();
    result.fold(
      (failure) {
        _favoriteMoviesController.add(left(failure));
      },
      (movies) {
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
    // Repository artık sadece DataSource'u çağırır.
    // Hata yönetimi ve parsing işi DataSource katmanındadır.
    return _remoteDataSource.getPaginatedMovies(page: page);
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoriteMovies() {
    return _remoteDataSource.fetchFavoriteMovies();
  }

  @override
  Future<Option<Failure>> toggleFavorite({required String movieId}) async {
    // API'ye favori durumunu değiştirme isteği gönder.
    final result = await _remoteDataSource.toggleFavorite(movieId: movieId);

    return await result.fold(
      // Hata olursa, hatayı doğrudan döndür.
      () async {
        // ...favori listesini yeniden çekerek cache'i ve stream'i güncelle.
        await _fetchAndBroadcastFavorites();
        // İşlem başarılı olduğu için none() döndür.
        return none();
      },
      (failure) => some(failure),
      // Başarılı olursa...
    );
  }

  // @disposeMethod // injectable için
  void dispose() {
    _favoriteMoviesController.close();
  }

  @override
  void clearCache() {
    _currentFavoritesCache = [];
    _favoriteMoviesController.add(right([]));
  }

  @override
  Future<void> refreshFavoriteMovies() async {
    clearCache();
    await _fetchAndBroadcastFavorites();
  }
}
