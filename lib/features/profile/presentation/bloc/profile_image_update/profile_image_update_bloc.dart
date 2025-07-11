import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repositories/profile_repository.dart';
import '../../../../../services/logger/logger_service.dart';
import 'profile_image_update_event.dart';
import 'profile_image_update_state.dart';

@injectable
class ProfileImageUpdateBloc
    extends Bloc<ProfileImageUpdateEvent, ProfileImageUpdateState> {
  final ProfileRepository _profileRepository;
  final LoggerService _logger;

  ProfileImageUpdateBloc(this._profileRepository, this._logger)
      : super(ProfileImageUpdateState.initial()) {
    on<ImageSelected>(_onImageSelected);
    on<UploadStarted>(_onUploadStarted);
  }

  void _onImageSelected(
      ImageSelected event, Emitter<ProfileImageUpdateState> emit) {
    _logger.i('ImageSelected event received.');
    emit(state.copyWith(
      selectedImageFile: event.imageFile,
      singleTimeEvent: null,
    ));
  }

  Future<void> _onUploadStarted(
      UploadStarted event, Emitter<ProfileImageUpdateState> emit) async {
    if (state.selectedImageFile == null) {
      _logger.w('UploadStarted event received but no image selected.');
      return;
    }

    _logger.i('UploadStarted event received. Starting image upload.');
    emit(state.copyWith(isLoading: true, singleTimeEvent: null));

    final result =
        await _profileRepository.uploadProfilePhoto(state.selectedImageFile!);

    result.fold(
      (failure) {
        _logger.e('Image upload failed', error: failure);
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent:
              ImageUpdateSingleTimeEvent.showErrorToast(failure.message),
        ));
      },
      (newImageUrl) {
        _logger.i('Image uploaded successfully.');
        emit(state.copyWith(
          isLoading: false,
          singleTimeEvent:
              ImageUpdateSingleTimeEvent.uploadSuccess(newImageUrl),
        ));
      },
    );
  }
}
