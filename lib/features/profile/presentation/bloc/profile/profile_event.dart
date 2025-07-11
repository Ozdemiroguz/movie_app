import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileFetched() = ProfileFetched;

  const factory ProfileEvent.logoutButtonPressed() = LogoutButtonPressed;

  const factory ProfileEvent.profilePhotoUpdated(File imageFile) =
      ProfilePhotoUpdated;
}
