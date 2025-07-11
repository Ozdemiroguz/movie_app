part of 'favorite_movies_bloc.dart';

@freezed
class FavoriteMoviesEvent with _$FavoriteMoviesEvent {
  const factory FavoriteMoviesEvent.subscriptionRequested() =
      _SubscriptionRequested;

  const factory FavoriteMoviesEvent.favoritesUpdated(
      Either<Failure, List<Movie>> movies) = _FavoritesUpdated;

  const factory FavoriteMoviesEvent.toggleFavorite({required String movieId}) =
      _ToggleFavorite;
}
