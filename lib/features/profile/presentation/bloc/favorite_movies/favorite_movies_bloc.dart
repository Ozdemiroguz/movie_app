import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../../../core/models/movie/movie.dart';
import '../../../../../services/logger/logger_service.dart';
import '../../../../home/domain/repositories/movie_repository.dart';

part 'favorite_movies_bloc.freezed.dart';
part 'favorite_movies_event.dart';
part 'favorite_movies_state.dart';

@injectable
class FavoriteMoviesBloc
    extends Bloc<FavoriteMoviesEvent, FavoriteMoviesState> {
  final MoviesRepository _moviesRepository;
  final LoggerService _logger;
  StreamSubscription<Either<Failure, List<Movie>>>? _favoritesSubscription;

  FavoriteMoviesBloc(this._moviesRepository, this._logger)
      : super(const FavoriteMoviesState.initial()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
    on<_FavoritesUpdated>(_onFavoritesUpdated);
    on<_ToggleFavorite>(_onToggleFavorite);

    _logger.i('FavoriteMoviesBloc initialized.');
    add(const FavoriteMoviesEvent.subscriptionRequested());
  }

  Future<void> _onToggleFavorite(
    _ToggleFavorite event,
    Emitter<FavoriteMoviesState> emit,
  ) async {
    _logger.i('ToggleFavorite event received for movie ID: ${event.movieId}');
    await _moviesRepository.toggleFavorite(movieId: event.movieId);
    _logger.i('Favorite status toggled.');
  }

  void _onSubscriptionRequested(
    _SubscriptionRequested event,
    Emitter<FavoriteMoviesState> emit,
  ) {
    _logger.i('SubscriptionRequested event received.');
    emit(const FavoriteMoviesState.loading());
    _favoritesSubscription?.cancel();
    _favoritesSubscription =
        _moviesRepository.watchFavoriteMovies().listen((either) {
      add(_FavoritesUpdated(either));
    });
    _logger.i('Favorites subscription started.');
  }

  void _onFavoritesUpdated(
    _FavoritesUpdated event,
    Emitter<FavoriteMoviesState> emit,
  ) {
    _logger.i('FavoritesUpdated event received.');
    event.movies.fold(
      (failure) {
        _logger.e('Failed to update favorites', error: failure);
        emit(FavoriteMoviesState.error(failure: failure));
      },
      (movies) {
        _logger.i('Favorites updated successfully. Count: ${movies.length}');
        emit(FavoriteMoviesState.loaded(movies: movies));
      },
    );
  }

  @override
  Future<void> close() {
    _logger.i('Closing FavoriteMoviesBloc.');
    _favoritesSubscription?.cancel();
    return super.close();
  }
}
