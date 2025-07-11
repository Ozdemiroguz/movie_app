// import 'package:fpdart/fpdart.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../core/injections/locator.dart';
// import '../bloc/home_state.dart';

// final homeProvider =
//     NotifierProvider<_HomeNotifier, HomeState>(_HomeNotifier.new);

// final class _HomeNotifier extends Notifier<HomeState> {
//   @override
//   HomeState build() {
//     Future(() => init());
//     return HomeState.initial();
//   }

//   Future<void> init() async {
//     setLoading(true);
//     await loadInitialMovies();
//     await loadFavoriteMovies();
//     updateFavoriteMovies();
//     setLoading(false);
//   }

//   void setLoading(bool isLoading) {
//     state = state.copyWith(isLoading: isLoading);
//   }

//   void setLoadingMore(bool isLoadingMore) {
//     state = state.copyWith(isLoadingMore: isLoadingMore);
//   }

//   void setCurrentIndex(int index) {
//     state = state.copyWith(currenIndex: index);

//     if (index == state.paginatedMoviesResponse.movies.length - 2) {
//       loadMoreMovies();
//     }
//   }

//   void onChangedLongDescription(bool longDescription) {
//     state = state.copyWith(longDescription: longDescription);
//   }

//   Future<void> loadInitialMovies() async {
//     final result = await ref.read(movieRepositoryProvider).getPaginatedMovies(
//           page: 1,
//         );
//     result.match(
//       (failure) => state = state.copyWith(failure: some(failure)),
//       (paginatedResponse) {
//         state = state.copyWith(
//           paginatedMoviesResponse: paginatedResponse,
//           failure: none(),
//         );
//       },
//     );
//   }

//   Future<void> loadMoreMovies() async {
//     final currentPage = state.paginatedMoviesResponse.pagination.currentPage;
//     final totalPages = state.paginatedMoviesResponse.pagination.totalPages;

//     if (currentPage >= totalPages) return;

//     setLoadingMore(true);
//     final nextPage = currentPage + 1;
//     final result = await ref.read(movieRepositoryProvider).getPaginatedMovies(
//           page: nextPage,
//         );
//     result.match(
//       (failure) {
//         state = state.copyWith(failure: some(failure));
//       },
//       (paginatedResponse) {
//         final updatedMovies = [
//           ...state.paginatedMoviesResponse.movies,
//           ...paginatedResponse.movies
//         ];
//         final updatedResponse = state.paginatedMoviesResponse.copyWith(
//           movies: updatedMovies,
//           pagination: paginatedResponse.pagination,
//         );
//         state = state.copyWith(
//           paginatedMoviesResponse: updatedResponse,
//           failure: none(),
//         );
//       },
//     );
//     setLoadingMore(false);
//   }

//   Future<void> loadFavoriteMovies() async {
//     final result = await ref.read(movieRepositoryProvider).getFavoriteMovies();
//     result.match(
//       (failure) => state = state.copyWith(failure: some(failure)),
//       (favorites) => state = state.copyWith(
//         favoriteMovies: favorites,
//         failure: none(),
//       ),
//     );
//   }

//   Future<void> toggleFavorite(String movieId) async {
//     final result = await ref
//         .read(movieRepositoryProvider)
//         .toggleFavorite(movieId: movieId);

//     result.match(
//       () async {
//         await loadFavoriteMovies();
//         updateFavoriteMovies();
//       },
//       (failure) {
//         state = state.copyWith(failure: some(failure));
//       },
//     );
//   }

//   void updateFavoriteMovies() {
//     final updatedMovies = state.paginatedMoviesResponse.movies.map((movie) {
//       final isFavorite =
//           state.favoriteMovies.any((favorite) => favorite.id == movie.id);
//       return movie.copyWith(isFavorite: isFavorite);
//     }).toList();

//     final updatedResponse = state.paginatedMoviesResponse.copyWith(
//       movies: updatedMovies,
//     );

//     state = state.copyWith(
//       paginatedMoviesResponse: updatedResponse,
//     );
//   }
// }
