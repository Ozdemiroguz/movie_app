import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_update_event.freezed.dart';

@freezed
class ProfileImageUpdateEvent with _$ProfileImageUpdateEvent {
  const factory ProfileImageUpdateEvent.imageSelected(File imageFile) =
      ImageSelected;

  const factory ProfileImageUpdateEvent.uploadStarted() = UploadStarted;
}
