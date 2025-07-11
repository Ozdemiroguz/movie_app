// lib/features/profile/presentation/bloc/profile_image_update/profile_image_update_event.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_event.freezed.dart';

@freezed
class ProfileImageUpdateEvent with _$ProfileImageUpdateEvent {
  /// Kullanıcı galeriden veya kameradan yeni bir resim seçtiğinde.
  const factory ProfileImageUpdateEvent.imageSelected(File imageFile) =
      ImageSelected;

  /// Kullanıcı "Kaydet" veya "Yükle" butonuna bastığında.
  const factory ProfileImageUpdateEvent.uploadStarted() = UploadStarted;
}
