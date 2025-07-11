// lib/features/home/presentation/bloc/home_bloc.dart
import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../services/logger/logger_service.dart';
import '../../../../core/models/movie/movie.dart';
import '../../domain/repositories/movie_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MoviesRepository _moviesRepository;
  final LoggerService _logger;
  StreamSubscription<Either<Failure, List<Movie>>>? _favoritesSubscription;

  HomeBloc(this._moviesRepository, this._logger) : super(HomeState.initial()) {
    _listenToFavoritesChanges();

    on<Initialized>(_onInitialized);
    on<MoreMoviesFetched>(_onMoreMoviesFetched, transformer: droppable());
    on<PageChanged>(_onPageChanged);
    on<FavoriteToggled>(_onFavoriteToggled);
    on<OnFavoritesChanged>(_onFavoritesChanged);
    on<DescriptionVisibilityChanged>(_onDescriptionVisibilityChanged);

    add(const HomeEvent.initialized());
  }

  void _listenToFavoritesChanges() {
    _favoritesSubscription =
        _moviesRepository.watchFavoriteMovies().listen((result) {
      result.fold(
        (failure) {
          _logger.e('Failed to listen to favorites changes stream.',
              error: failure);
          add(HomeEvent.onFavoritesChanged(favoriteMovies: []));
        },
        (favoriteMovies) {
          _logger.i('Favorite movies stream updated.');
          add(HomeEvent.onFavoritesChanged(favoriteMovies: favoriteMovies));
        },
      );
    });
  }

  @override
  Future<void> close() {
    _favoritesSubscription?.cancel();
    return super.close();
  }

  Future<void> _onInitialized(
      Initialized event, Emitter<HomeState> emit) async {
    await _moviesRepository.refreshFavoriteMovies();
    _logger.i('HomeBloc initialized. Refreshing movie data.');

    emit(state.copyWith(status: const HomeStatus.loading()));
    final result = await _moviesRepository.getPaginatedMovies(page: 1);

    result.fold(
      (failure) {
        _logger.e('Failed to initialize HomeBloc with movies data.',
            error: failure);
        emit(state.copyWith(
          status: HomeStatus.failure(
            message: failure.message,
          ),
          singleTimeEvent: HomeSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
      (paginatedResponse) {
        _logger.i('Successfully initialized HomeBloc with movies data.');
        emit(state.copyWith(
          paginatedMoviesResponse: paginatedResponse,
          status: const HomeStatus.success(),
          singleTimeEvent:
              HomeSingleTimeEvent.showSuccessToast('movies_updated'.tr()),
          currentIndex: 0,
        ));
      },
    );
    event.completer?.complete();
  }

  void _onFavoritesChanged(OnFavoritesChanged event, Emitter<HomeState> emit) {
    final favoriteMovies = event.favoriteMovies;
    final currentMovies = state.paginatedMoviesResponse.movies;

    final updatedMovies = currentMovies.map((movie) {
      final isFavorite = favoriteMovies.any((fav) => fav.id == movie.id);
      return movie.isFavorite == isFavorite
          ? movie
          : movie.copyWith(isFavorite: isFavorite);
    }).toList();

    emit(state.copyWith(
      paginatedMoviesResponse:
          state.paginatedMoviesResponse.copyWith(movies: updatedMovies),
    ));
  }

  Future<void> _onMoreMoviesFetched(
      MoreMoviesFetched event, Emitter<HomeState> emit) async {
    final pagination = state.paginatedMoviesResponse.pagination;
    if (state.status == const HomeStatus.loadingMore() ||
        pagination.currentPage >= pagination.totalPages) {
      _logger.d(
          'Attempted to fetch more movies but already loading or no more pages.');
      return;
    }
    _logger.i(
        'Fetching more movies. Current page: ${pagination.currentPage}, Total pages: ${pagination.totalPages}');
    emit(state.copyWith(status: const HomeStatus.loadingMore()));

    final nextPage = pagination.currentPage + 1;
    final result = await _moviesRepository.getPaginatedMovies(page: nextPage);

    result.fold(
      (failure) {
        _logger.e('Failed to fetch more movies.', error: failure);
        emit(state.copyWith(
            status: HomeStatus.failure(message: failure.message)));
      },
      (newResponse) {
        final allMovies = List<Movie>.from(state.paginatedMoviesResponse.movies)
          ..addAll(newResponse.movies);

        emit(state.copyWith(
          paginatedMoviesResponse: state.paginatedMoviesResponse.copyWith(
            movies: allMovies,
            pagination: newResponse.pagination,
          ),
          status: const HomeStatus.success(),
        ));
        _logger.i(
            'Successfully fetched more movies. New total movies: ${allMovies.length}');
      },
    );
  }

  void _onPageChanged(PageChanged event, Emitter<HomeState> emit) {
    if (state.currentIndex == event.newIndex) return;
    _logger.i('Page changed to index: ${event.newIndex}.');

    emit(state.copyWith(
      currentIndex: event.newIndex,
      singleTimeEvent: null,
    ));

    if (event.newIndex >= state.paginatedMoviesResponse.movies.length - 2 &&
        state.paginatedMoviesResponse.movies.isNotEmpty) {
      _logger.i('Reached near end of movie list. Triggering more movie fetch.');
      add(const HomeEvent.moreMoviesFetched());
    }
  }

  Future<void> _onFavoriteToggled(
      FavoriteToggled event, Emitter<HomeState> emit) async {
    _logger.i('Toggling favorite status for movie ID: ${event.movieId}');
    final result =
        await _moviesRepository.toggleFavorite(movieId: event.movieId);
    emit(state.copyWith(
      singleTimeEvent:
          HomeSingleTimeEvent.showSuccessToast('favorite_updated'.tr()),
    ));
    result.fold(
      () {
        _logger.i(
            'Successfully toggled favorite status for movie ID: ${event.movieId}.');
      },
      (failure) {
        _logger.e(
            'Failed to toggle favorite status for movie ID: ${event.movieId}.',
            error: failure);
        emit(state.copyWith(
          status: HomeStatus.failure(message: failure.message),
          singleTimeEvent: HomeSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
    );
  }

  void _onDescriptionVisibilityChanged(
      DescriptionVisibilityChanged event, Emitter<HomeState> emit) {
    _logger.i('Description visibility changed to: ${event.isExpanded}.');
    emit(state.copyWith(isDescriptionExpanded: event.isExpanded));
  }
}
