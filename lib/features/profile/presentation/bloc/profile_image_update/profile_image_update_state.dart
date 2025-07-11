// lib/features/profile/presentation/bloc/profile_image_update/profile_image_update_state.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_state.freezed.dart';

// Tek seferlik olaylar için.
@freezed
class ImageUpdateSingleTimeEvent with _$ImageUpdateSingleTimeEvent {
  /// Yükleme başarılı olduğunda ve bir önceki sayfaya bilgi vermek için.
  const factory ImageUpdateSingleTimeEvent.uploadSuccess(String newImageUrl) =
      UploadSuccess;

  /// Hata durumunda toast göstermek için.
  const factory ImageUpdateSingleTimeEvent.showErrorToast(String message) =
      ShowErrorToast;
}

@freezed
abstract class ProfileImageUpdateState with _$ProfileImageUpdateState {
  const factory ProfileImageUpdateState({
    /// Kullanıcının seçtiği lokal dosya.
    File? selectedImageFile,

    /// Yükleme işleminin durumu.
    required bool isLoading,

    /// Tek seferlik olayları yönetmek için.
    ImageUpdateSingleTimeEvent? singleTimeEvent,
  }) = _ProfileImageUpdateState;

  factory ProfileImageUpdateState.initial() => const ProfileImageUpdateState(
        selectedImageFile: null,
        isLoading: false,
        singleTimeEvent: null,
      );
}
