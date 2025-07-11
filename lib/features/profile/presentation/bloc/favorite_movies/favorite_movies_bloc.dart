import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/failure/failure.dart';
import '../../../../home/domain/models/movie/movie.dart';
import '../../../../home/domain/repositories/movie_repository.dart';

part 'favorite_movies_bloc.freezed.dart';
part 'favorite_movies_event.dart';
part 'favorite_movies_state.dart';

@injectable
class FavoriteMoviesBloc
    extends Bloc<FavoriteMoviesEvent, FavoriteMoviesState> {
  final MoviesRepository _moviesRepository;
  StreamSubscription<Either<Failure, List<Movie>>>? _favoritesSubscription;

  FavoriteMoviesBloc(this._moviesRepository)
      : super(const FavoriteMoviesState.initial()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
    on<_FavoritesUpdated>(_onFavoritesUpdated);
    on<_ToggleFavorite>(_onToggleFavorite);

    add(const FavoriteMoviesEvent.subscriptionRequested());
  }

  Future<void> _onToggleFavorite(
    _ToggleFavorite event,
    Emitter<FavoriteMoviesState> emit,
  ) async {
    await _moviesRepository.toggleFavorite(movieId: event.movieId);
  }

  void _onSubscriptionRequested(
    _SubscriptionRequested event,
    Emitter<FavoriteMoviesState> emit,
  ) {
    emit(const FavoriteMoviesState.loading());
    _favoritesSubscription?.cancel();
    _favoritesSubscription =
        _moviesRepository.watchFavoriteMovies().listen((either) {
      add(_FavoritesUpdated(either));
    });
  }

  void _onFavoritesUpdated(
    _FavoritesUpdated event,
    Emitter<FavoriteMoviesState> emit,
  ) {
    event.movies.fold(
      (failure) => emit(FavoriteMoviesState.error(failure: failure)),
      (movies) => emit(FavoriteMoviesState.loaded(movies: movies)),
    );
  }

  @override
  Future<void> close() {
    _favoritesSubscription?.cancel();
    return super.close();
  }
}
