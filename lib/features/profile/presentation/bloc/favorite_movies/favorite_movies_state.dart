part of 'favorite_movies_bloc.dart';

@freezed
abstract class FavoriteMoviesState with _$FavoriteMoviesState {
  const factory FavoriteMoviesState.initial() = _Initial;
  const factory FavoriteMoviesState.loading() = _Loading;
  const factory FavoriteMoviesState.loaded({required List<Movie> movies}) =
      _Loaded;
  const factory FavoriteMoviesState.error({required Failure failure}) = _Error;
}
