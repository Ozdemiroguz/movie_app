part of 'favorite_movies_bloc.dart';

@freezed
class FavoriteMoviesEvent with _$FavoriteMoviesEvent {
  const factory FavoriteMoviesEvent.subscriptionRequested() =
      _SubscriptionRequested;

  // Bu private event, stream'den yeni veri geldiğinde BLoC'un kendi kendine göndermesi için.
  const factory FavoriteMoviesEvent.favoritesUpdated(
      Either<Failure, List<Movie>> movies) = _FavoritesUpdated;

  const factory FavoriteMoviesEvent.toggleFavorite({required String movieId}) =
      _ToggleFavorite;
}
