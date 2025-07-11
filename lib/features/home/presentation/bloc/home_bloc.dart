// lib/features/home/presentation/bloc/home_bloc.dart
import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/models/movie/movie.dart';
import '../../domain/repositories/movie_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MoviesRepository _moviesRepository;
  StreamSubscription<Either<Failure, List<Movie>>>? _favoritesSubscription;

  HomeBloc(this._moviesRepository) : super(HomeState.initial()) {
    // 1. BLoC oluşturulur oluşturulmaz, favori değişikliklerini dinlemeye başla.
    _listenToFavoritesChanges();

    // 2. Event handler'ları kaydet.
    on<Initialized>(_onInitialized);
    on<MoreMoviesFetched>(_onMoreMoviesFetched,
        transformer: droppable()); // Spam'i önle
    on<PageChanged>(_onPageChanged);
    on<FavoriteToggled>(_onFavoriteToggled);
    on<OnFavoritesChanged>(_onFavoritesChanged);
    on<DescriptionVisibilityChanged>(_onDescriptionVisibilityChanged);

    // 3. Başlangıç verilerini çekmek için ilk event'i gönder.
    add(const HomeEvent.initialized());
  }

  /// MoviesRepository'deki favori stream'ini dinler ve her yeni veri
  /// geldiğinde bir `OnFavoritesChanged` event'i tetikler.
  void _listenToFavoritesChanges() {
    _favoritesSubscription =
        _moviesRepository.watchFavoriteMovies().listen((result) {
      result.fold(
        (failure) {
          // Stream'den bir hata gelirse, bunu da bir state olarak yansıtabiliriz.
          add(HomeEvent.onFavoritesChanged(
              favoriteMovies: [])); // veya bir hata durumu
        },
        (favoriteMovies) {
          // Stream'den yeni bir favori listesi geldi.
          add(HomeEvent.onFavoritesChanged(favoriteMovies: favoriteMovies));
        },
      );
    });
  }

  @override
  Future<void> close() {
    // BLoC yok edilirken stream aboneliğini iptal etmeyi unutma!
    _favoritesSubscription?.cancel();
    return super.close();
  }

  /// Sayfa ilk yüklendiğinde veya yenilendiğinde çağrılır.
  Future<void> _onInitialized(
      Initialized event, Emitter<HomeState> emit) async {
    // Ensure favorite movies are refreshed whenever the HomeBloc is initialized
    await _moviesRepository.refreshFavoriteMovies();

    emit(state.copyWith(status: const HomeStatus.loading()));
    final result = await _moviesRepository.getPaginatedMovies(page: 1);

    result.fold(
      (failure) => emit(state.copyWith(
        status: HomeStatus.failure(
          message: failure.message,
        ),
        singleTimeEvent: HomeSingleTimeEvent.showErrorToast(failure.message),
      )),
      (paginatedResponse) {
        // Filmler başarıyla çekildi. Favori durumları, stream'den gelen
        // ilk `OnFavoritesChanged` eventi ile otomatik olarak senkronize edilecek.
        emit(state.copyWith(
          paginatedMoviesResponse: paginatedResponse,
          status: const HomeStatus.success(),
          singleTimeEvent:
              HomeSingleTimeEvent.showSuccessToast('movies_updated'.tr()),
          currentIndex: 0, // Yenileme yapıldığında indeksi sıfırla.
        ));
      },
    );
    event.completer?.complete();
  }

  /// Stream'den yeni bir favori listesi geldiğinde tetiklenir.
  void _onFavoritesChanged(OnFavoritesChanged event, Emitter<HomeState> emit) {
    final favoriteMovies = event.favoriteMovies;
    final currentMovies = state.paginatedMoviesResponse.movies;

    // Ana film listesini, yeni favori listesine göre senkronize et.
    final updatedMovies = currentMovies.map((movie) {
      final isFavorite = favoriteMovies.any((fav) => fav.id == movie.id);
      // Sadece durumu değişen filmler için yeni nesne oluştur (performans).
      return movie.isFavorite == isFavorite
          ? movie
          : movie.copyWith(isFavorite: isFavorite);
    }).toList();

    emit(state.copyWith(
      paginatedMoviesResponse:
          state.paginatedMoviesResponse.copyWith(movies: updatedMovies),
    ));
  }

  /// Daha fazla film yüklemek için çağrılır.
  Future<void> _onMoreMoviesFetched(
      MoreMoviesFetched event, Emitter<HomeState> emit) async {
    final pagination = state.paginatedMoviesResponse.pagination;
    if (state.status == const HomeStatus.loadingMore() ||
        pagination.currentPage >= pagination.totalPages) {
      return;
    }
    emit(state.copyWith(status: const HomeStatus.loadingMore()));

    final nextPage = pagination.currentPage + 1;
    final result = await _moviesRepository.getPaginatedMovies(page: nextPage);

    result.fold(
      (failure) => emit(
          state.copyWith(status: HomeStatus.failure(message: failure.message))),
      (newResponse) {
        final allMovies = List<Movie>.from(state.paginatedMoviesResponse.movies)
          ..addAll(newResponse.movies);

        // Yeni gelen filmlerin de favori durumunu senkronize etmemiz gerekebilir.
        // Ama bu zaten stream'den gelen bir sonraki OnFavoritesChanged ile hallolacak.
        // Bu yüzden burada ek bir senkronizasyona gerek yok.
        emit(state.copyWith(
          paginatedMoviesResponse: state.paginatedMoviesResponse.copyWith(
            movies: allMovies,
            pagination: newResponse.pagination,
          ),
          status: const HomeStatus.success(),
        ));
      },
    );
  }

  /// Kullanıcı filmler arasında kaydırdığında çağrılır.
  void _onPageChanged(PageChanged event, Emitter<HomeState> emit) {
    if (state.currentIndex == event.newIndex) return;

    emit(state.copyWith(
      currentIndex: event.newIndex,
      singleTimeEvent: null,
    ));

    // Listenin sondan ikinci elemanına gelindiğinde yeni filmleri çek.
    if (event.newIndex >= state.paginatedMoviesResponse.movies.length - 2 &&
        state.paginatedMoviesResponse.movies.isNotEmpty) {
      add(const HomeEvent.moreMoviesFetched());
    }
  }

  /// Bir filmin favori durumu değiştirildiğinde çağrılır.
  Future<void> _onFavoriteToggled(
      FavoriteToggled event, Emitter<HomeState> emit) async {
    // Bu metod artık inanılmaz derecede basit.
    // Sadece komutu Repository'ye gönderiyor.
    final result =
        await _moviesRepository.toggleFavorite(movieId: event.movieId);
    emit(state.copyWith(
      singleTimeEvent:
          HomeSingleTimeEvent.showSuccessToast('favorite_updated'.tr()),
    ));
    // Hata olursa UI'a bildir. Başarılı olursa hiçbir şey yapma,
    // çünkü Repository'nin stream'i değişikliği zaten BLoC'a bildirecek.
    result.fold(
      () {}, // Başarı durumunda BLoC'un state'i doğrudan değiştirmesine gerek yok.
      (failure) => emit(state.copyWith(
        status: HomeStatus.failure(message: failure.message),
        singleTimeEvent: HomeSingleTimeEvent.showErrorToast(failure.message),
      )),
    );
  }

  /// Açıklama metninin görünürlüğü değiştiğinde çağrılır.
  void _onDescriptionVisibilityChanged(
      DescriptionVisibilityChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(isDescriptionExpanded: event.isExpanded));
  }
}
