import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_state.freezed.dart';

@freezed
class ImageUpdateSingleTimeEvent with _$ImageUpdateSingleTimeEvent {
  const factory ImageUpdateSingleTimeEvent.uploadSuccess(String newImageUrl) =
      UploadSuccess;

  const factory ImageUpdateSingleTimeEvent.showErrorToast(String message) =
      ShowErrorToast;
}

@freezed
abstract class ProfileImageUpdateState with _$ProfileImageUpdateState {
  const factory ProfileImageUpdateState({
    File? selectedImageFile,
    required bool isLoading,
    ImageUpdateSingleTimeEvent? singleTimeEvent,
  }) = _ProfileImageUpdateState;

  factory ProfileImageUpdateState.initial() => const ProfileImageUpdateState(
        selectedImageFile: null,
        isLoading: false,
        singleTimeEvent: null,
      );
}
