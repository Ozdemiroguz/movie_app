// lib/features/home/presentation/bloc/home_event.dart
import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/movie/movie.dart';

part 'home_event.freezed.dart';

@freezed
// 'abstract' kelimesini kaldırıyoruz ve public isimlendirme kullanıyoruz.
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialized({Completer<void>? completer}) =
      Initialized;

  const factory HomeEvent.moreMoviesFetched() = MoreMoviesFetched;

  const factory HomeEvent.pageChanged({required int newIndex}) = PageChanged;

  const factory HomeEvent.favoriteToggled({required String movieId}) =
      FavoriteToggled;

  const factory HomeEvent.descriptionVisibilityChanged(
      {required bool isExpanded}) = DescriptionVisibilityChanged;

  const factory HomeEvent.onFavoritesChanged(
      {required List<Movie> favoriteMovies}) = OnFavoritesChanged;
}
