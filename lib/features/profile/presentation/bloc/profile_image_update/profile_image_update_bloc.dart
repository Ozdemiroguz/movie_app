// lib/features/profile/presentation/bloc/profile_image_update/profile_image_update_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/profile_repository.dart';
import 'profile_image_update_event.dart';
import 'profile_image_update_state.dart';

class ProfileImageUpdateBloc
    extends Bloc<ProfileImageUpdateEvent, ProfileImageUpdateState> {
  final ProfileRepository _profileRepository;

  ProfileImageUpdateBloc(this._profileRepository)
      : super(ProfileImageUpdateState.initial()) {
    on<ImageSelected>(_onImageSelected);
    on<UploadStarted>(_onUploadStarted);
  }

  void _onImageSelected(
      ImageSelected event, Emitter<ProfileImageUpdateState> emit) {
    // Kullanıcı yeni bir resim seçtiğinde, bunu state'e yansıt.
    emit(state.copyWith(
      selectedImageFile: event.imageFile,
      singleTimeEvent: null, // Eski olayları temizle
    ));
  }

  Future<void> _onUploadStarted(
      UploadStarted event, Emitter<ProfileImageUpdateState> emit) async {
    // Eğer hiç resim seçilmemişse, bir şey yapma.
    if (state.selectedImageFile == null) return;

    emit(state.copyWith(isLoading: true, singleTimeEvent: null));

    final result =
        await _profileRepository.uploadProfilePhoto(state.selectedImageFile!);

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        singleTimeEvent:
            ImageUpdateSingleTimeEvent.showErrorToast(failure.message),
      )),
      (newImageUrl) => emit(state.copyWith(
        isLoading: false,
        // Yükleme başarılı, bu olayı UI'a bildir.
        singleTimeEvent: ImageUpdateSingleTimeEvent.uploadSuccess(newImageUrl),
      )),
    );
  }
}
