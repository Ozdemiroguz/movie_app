import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/paginated_movie_response/paginate_movie_response.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeSingleTimeEvent with _$HomeSingleTimeEvent {
  const factory HomeSingleTimeEvent.showSuccessToast(String message) =
      ShowSuccessToast;
  const factory HomeSingleTimeEvent.showErrorToast(String message) =
      ShowErrorToast;
}

@freezed
abstract class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initial() = _Initial;

  const factory HomeStatus.loading() = _Loading;

  const factory HomeStatus.loadingMore() = _LoadingMore;

  const factory HomeStatus.success() = _Success;

  const factory HomeStatus.failure({required String message}) = _Failure;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStatus status,
    required PaginatedMoviesResponse paginatedMoviesResponse,
    required int currentIndex,
    required bool isDescriptionExpanded,
    HomeSingleTimeEvent? singleTimeEvent,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        status: const HomeStatus.initial(),
        paginatedMoviesResponse: PaginatedMoviesResponse.initial(),
        currentIndex: 0,
        isDescriptionExpanded: false,
        singleTimeEvent: null,
      );
}
