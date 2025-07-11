// lib/features/profile/presentation/bloc/profile_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/profile_repository.dart';
import '../../../../auth/domain/repositories/auth_repository.dart';
import 'profile_event.dart';
import 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;

  ProfileBloc(this._profileRepository, this._authRepository)
      : super(ProfileState.initial()) {
    on<ProfileFetched>(_onProfileFetched);
    on<LogoutButtonPressed>(_onLogoutButtonPressed);
    on<ProfilePhotoUpdated>(_onProfilePhotoUpdated);

    // BLoC oluşturulduğunda ilk profil verisini çek.
    add(const ProfileEvent.profileFetched());
  }

  Future<void> _onProfileFetched(
      ProfileFetched event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _profileRepository.getProfile();

    result.fold(
      (failure) => emit(state.copyWith(
        status: const ProfileStatus.failure(),
        singleTimeEvent: ProfileSingleTimeEvent.showErrorToast(failure.message),
      )),
      (profile) => emit(state.copyWith(
        status: const ProfileStatus.success(),
        profile: profile,
      )),
    );
  }

  Future<void> _onLogoutButtonPressed(
      LogoutButtonPressed event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _authRepository.logout();

    result.fold(
      () => emit(state.copyWith(
        status: const ProfileStatus.success(),
        // Başarılı çıkış sonrası Login sayfasına yönlendirme olayını yayınla.
        singleTimeEvent: const ProfileSingleTimeEvent.navigateToLogin(),
      )),
      (failure) => emit(state.copyWith(
        status: const ProfileStatus.failure(),
        singleTimeEvent: ProfileSingleTimeEvent.showErrorToast(failure.message),
      )),
    );
  }

  Future<void> _onProfilePhotoUpdated(
      ProfilePhotoUpdated event, Emitter<ProfileState> emit) async {
    // Fotoğraf yüklenirken spesifik bir loading state'i gösterebiliriz.
    // Şimdilik genel loading kullanıyoruz.
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _profileRepository.uploadProfilePhoto(event.imageFile);

    result.fold(
      (failure) => emit(state.copyWith(
        status: const ProfileStatus.failure(),
        singleTimeEvent: ProfileSingleTimeEvent.showErrorToast(failure.message),
      )),
      (newPhotoUrl) {
        // Yükleme başarılı olduğunda, mevcut profil state'ini yeni URL ile güncelle.
        // Tekrar getProfile() çağırmaya gerek yok!
        final updatedProfile = state.profile.copyWith(photoUrl: newPhotoUrl);
        emit(state.copyWith(
          status: const ProfileStatus.success(),
          profile: updatedProfile,
          singleTimeEvent: const ProfileSingleTimeEvent.showSuccessToast(
              'Photo updated successfully!'),
        ));
      },
    );
  }

  // Not: `setLanguageChanged` gibi basit UI state değişiklikleri için de
  // bir event oluşturmak en doğru yoldur.
  // Örn: `add(const ProfileEvent.languageTogglePressed())`
}
