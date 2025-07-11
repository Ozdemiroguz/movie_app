import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/profile/profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileSingleTimeEvent with _$ProfileSingleTimeEvent {
  const factory ProfileSingleTimeEvent.navigateToLogin() = NavigateToLogin;
  const factory ProfileSingleTimeEvent.showErrorToast(String message) =
      ShowErrorToast;
  const factory ProfileSingleTimeEvent.showSuccessToast(String message) =
      ShowSuccessToast;
}

@freezed
abstract class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.initial() = _Initial;
  const factory ProfileStatus.loading() = _Loading;
  const factory ProfileStatus.success() = _Success;
  const factory ProfileStatus.failure() = _Failure;
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required ProfileStatus status,
    required ProfileModel profile,
    required bool languageChanged,
    ProfileSingleTimeEvent? singleTimeEvent,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        status: const ProfileStatus.initial(),
        profile: ProfileModel.empty(),
        languageChanged: false,
        singleTimeEvent: null,
      );
}
