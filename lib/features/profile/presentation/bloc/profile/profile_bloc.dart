import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/profile_repository.dart';
import '../../../../auth/domain/repositories/auth_repository.dart';
import 'profile_event.dart';
import 'profile_state.dart';
import '../../../../../services/logger/logger_service.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;
  final LoggerService _logger;

  ProfileBloc(this._profileRepository, this._authRepository, this._logger)
      : super(ProfileState.initial()) {
    on<ProfileFetched>(_onProfileFetched);
    on<LogoutButtonPressed>(_onLogoutButtonPressed);
    on<ProfilePhotoUpdated>(_onProfilePhotoUpdated);

    _logger.i('ProfileBloc initialized.');
    add(const ProfileEvent.profileFetched());
  }

  Future<void> _onProfileFetched(
      ProfileFetched event, Emitter<ProfileState> emit) async {
    _logger.i('ProfileFetched event received.');
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _profileRepository.getProfile();

    result.fold(
      (failure) {
        _logger.e('Failed to fetch profile', error: failure);
        emit(state.copyWith(
          status: const ProfileStatus.failure(),
          singleTimeEvent:
              ProfileSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
      (profile) {
        _logger.i('Profile fetched successfully.');
        emit(state.copyWith(
          status: const ProfileStatus.success(),
          profile: profile,
        ));
      },
    );
  }

  Future<void> _onLogoutButtonPressed(
      LogoutButtonPressed event, Emitter<ProfileState> emit) async {
    _logger.i('LogoutButtonPressed event received.');
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _authRepository.logout();

    result.fold(
      () {
        _logger.i('Logout successful.');
        emit(state.copyWith(
          status: const ProfileStatus.success(),
          singleTimeEvent: const ProfileSingleTimeEvent.navigateToLogin(),
        ));
      },
      (failure) {
        _logger.e('Logout failed', error: failure);
        emit(state.copyWith(
          status: const ProfileStatus.failure(),
          singleTimeEvent:
              ProfileSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
    );
  }

  Future<void> _onProfilePhotoUpdated(
      ProfilePhotoUpdated event, Emitter<ProfileState> emit) async {
    _logger.i('ProfilePhotoUpdated event received.');
    emit(state.copyWith(
        status: const ProfileStatus.loading(), singleTimeEvent: null));

    final result = await _profileRepository.uploadProfilePhoto(event.imageFile);

    result.fold(
      (failure) {
        _logger.e('Failed to update profile photo', error: failure);
        emit(state.copyWith(
          status: const ProfileStatus.failure(),
          singleTimeEvent:
              ProfileSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
      (newPhotoUrl) {
        final updatedProfile = state.profile.copyWith(photoUrl: newPhotoUrl);
        _logger.i('Profile photo updated successfully.');
        emit(state.copyWith(
          status: const ProfileStatus.success(),
          profile: updatedProfile,
          singleTimeEvent: const ProfileSingleTimeEvent.showSuccessToast(
              'Photo updated successfully!'),
        ));
      },
    );
  }
}
