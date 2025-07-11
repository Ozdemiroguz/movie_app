// lib/features/profile/presentation/bloc/profile_event.dart
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  /// Sayfa ilk yüklendiğinde veya yenilendiğinde tetiklenir.
  const factory ProfileEvent.profileFetched() = ProfileFetched;

  /// Kullanıcı çıkış yap butonuna bastığında tetiklenir.
  const factory ProfileEvent.logoutButtonPressed() = LogoutButtonPressed;

  /// Kullanıcı profil fotoğrafını güncellemek için bir dosya seçtiğinde.
  const factory ProfileEvent.profilePhotoUpdated(File imageFile) =
      ProfilePhotoUpdated;
}
