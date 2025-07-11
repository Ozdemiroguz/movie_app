import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/loading_overlay.dart';
import '../../../../core/injections/locator.dart';
import '../../../../custom/custom_app_bar.dart';
import '../../../../custom/custom_filled_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
// ProfileEvent için alias (takma ad) kullanarak isim çakışmasını önlüyoruz.
import '../../domain/repositories/profile_repository.dart';
import '../bloc/profile_image_update/profile_image_update_bloc.dart';
import '../bloc/profile_image_update/profile_image_update_event.dart';
import '../bloc/profile_image_update/profile_image_update_state.dart';

@RoutePage()
class ProfileImageUpdatePage extends StatelessWidget {
  final bool isSetupAccount;

  const ProfileImageUpdatePage({
    super.key,
    @PathParam('isSetupAccount') this.isSetupAccount = false,
  });

  @override
  Widget build(BuildContext context) {
    // Bu sayfanın kendi BLoC'u olduğu için, onu burada sağlıyoruz.
    // Bu, sayfa kapandığında BLoC'un da dispose edilmesini sağlar.
    return BlocProvider(
      create: (context) => ProfileImageUpdateBloc(
        getIt<ProfileRepository>(),
      ),
      child: BlocListener<ProfileImageUpdateBloc, ProfileImageUpdateState>(
        listenWhen: (p, c) =>
            c.singleTimeEvent != null || p.isLoading != c.isLoading,
        listener: (context, state) {
          // Loading Overlay
          if (state.isLoading) {
            LoadingScreen().show(context: context);
          } else {
            LoadingScreen().hide();
          }

          // Tek Seferlik Olaylar (Toast, Navigasyon)
          state.singleTimeEvent?.when(
            uploadSuccess: (newImageUrl) {
              CherryToast.success(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      title: Text('profile_image_updated'.tr()))
                  .show(context);

              if (isSetupAccount) {
                AutoRouter.of(context).replaceAll([const HomeNavBarRoute()]);
              } else {
                // Bir önceki sayfadaki ProfileBloc'u yeni veriyi çekmesi için tetikle.
                AutoRouter.of(context).pop(true);
              }
            },
            showErrorToast: (message) {
              CherryToast.error(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      title: Text("profile_image_update_error".tr()))
                  .show(context);
            },
          );
        },
        child: Scaffold(
          appBar: CustomAppBar(title: 'profile_image_update'.tr()),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('profile_image_update'.tr()),
                SizedBox(height: 8.h),
                Text('profile_image_update_description'.tr()),
                SizedBox(height: 47.h),
                const _AddImage(),
                SizedBox(height: 16.h),
                const Spacer(),
                _ContinueButton(isSetupAccount: isSetupAccount),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AddImage extends StatelessWidget {
  const _AddImage();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileImageUpdateBloc, ProfileImageUpdateState, File?>(
      selector: (state) => state.selectedImageFile,
      builder: (context, selectedImageFile) {
        return GestureDetector(
          onTap: () => _pickImage(context),
          child: Container(
            width: 169.w,
            height: 164.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary.withAlpha(25),
              borderRadius: BorderRadius.circular(31),
              border: Border.all(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(25),
                width: 1,
              ),
            ),
            child: selectedImageFile != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(31),
                    child: Image.file(selectedImageFile, fit: BoxFit.cover),
                  )
                : Assets.icons.plusIconlyPro.svg(),
          ),
        );
      },
    );
  }

  Future<void> _pickImage(BuildContext context) async {
    final source = await _showImageSourceBottomSheet(context);
    if (source == null) return;

    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      context
          .read<ProfileImageUpdateBloc>()
          .add(ProfileImageUpdateEvent.imageSelected(File(image.path)));
    }
  }

  Future<ImageSource?> _showImageSourceBottomSheet(BuildContext context) async {
    return showModalBottomSheet<ImageSource>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => const _ImageSourceBottomSheet(),
    );
  }
}

class _ImageSourceBottomSheet extends StatelessWidget {
  const _ImageSourceBottomSheet();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: [
          _ImageSourceOption(
              icon: Icons.camera_alt,
              label: 'camera'.tr(),
              source: ImageSource.camera),
          _ImageSourceOption(
              icon: Icons.photo_library,
              label: 'gallery'.tr(),
              source: ImageSource.gallery),
        ],
      ),
    );
  }
}

class _ImageSourceOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final ImageSource source;

  const _ImageSourceOption(
      {required this.icon, required this.label, required this.source});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          iconSize: 40,
          onPressed: () => Navigator.pop(context, source),
        ),
        Text(label),
      ],
    );
  }
}

class _ContinueButton extends StatelessWidget {
  final bool isSetupAccount;
  const _ContinueButton({required this.isSetupAccount});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileImageUpdateBloc, ProfileImageUpdateState>(
      buildWhen: (p, c) =>
          p.selectedImageFile != c.selectedImageFile ||
          p.isLoading != c.isLoading,
      builder: (context, state) {
        final isEnabled = state.selectedImageFile != null && !state.isLoading;
        return Padding(
          padding: EdgeInsets.all(26.r),
          child: CustomFilledButton(
            enabled: isEnabled,
            onPressed: () => context
                .read<ProfileImageUpdateBloc>()
                .add(const ProfileImageUpdateEvent.uploadStarted()),
            child: Text(isSetupAccount ? 'continue'.tr() : 'upload_image'.tr()),
          ),
        );
      },
    );
  }
}
