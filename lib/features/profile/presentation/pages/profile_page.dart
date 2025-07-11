import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_case/custom/custom_error_widget.dart';

import '../../../../core/settings_bloc/settings_bloc.dart';
import '../../../../core/settings_bloc/settings_state.dart';
import '../../../../custom/custom_app_bar.dart';
import '../../../../router/router.dart';
import '../bloc/profile/profile_bloc.dart';
import '../bloc/profile/profile_event.dart';
import '../bloc/profile/profile_state.dart';
import '../widgets/profile_header.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (context, settingsState) {
        return BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (p, c) => p.singleTimeEvent != c.singleTimeEvent,
          listener: (context, state) {
            state.singleTimeEvent?.when(
              navigateToLogin: () {
                AutoRouter.of(context).replaceAll([const AuthWrapperRoute()]);
              },
              showErrorToast: (message) {},
              showSuccessToast: (message) {},
            );
          },
          child: Scaffold(
            appBar: CustomAppBar(
              leading: const SizedBox.shrink(),
              title: 'profile'.tr(),
            ),
            body: RefreshIndicator(
              onRefresh: () async {
                context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.profileFetched());
              },
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.status.when(
                    initial: () => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    loading: () => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    success: () => _ProfileContentView(state: state),
                    failure: () => CustomErrorWidget(
                      message: 'profile_fetch_error'.tr(),
                      onRetry: () {
                        context
                            .read<ProfileBloc>()
                            .add(const ProfileEvent.profileFetched());
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ProfileContentView extends StatelessWidget {
  final ProfileState state;
  const _ProfileContentView({required this.state});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 20),
          ProfileHeader(
            name: state.profile.name,
            id: state.profile.id,
            imageUrl: state.profile.photoUrl,
            isProfile: true,
          ),
          const SizedBox(height: 20),
          _ProfileOptionWidget(
            title: 'change_password'.tr(),
            icon: Icons.lock,
            onTap: () {/* TODO: Navigate to change password page */},
          ),
          _ProfileOptionWidget(
            title: 'settings'.tr(),
            icon: Icons.settings,
            onTap: () => context.router.push(const SettingsRoute()),
          ),
          _ProfileOptionWidget(
            title: 'notifications'.tr(),
            icon: Icons.notifications,
            onTap: () {/* TODO: Navigate to notifications page */},
          ),
          _ProfileOptionWidget(
            title: 'logout'.tr(),
            icon: Icons.exit_to_app,
            onTap: () => context
                .read<ProfileBloc>()
                .add(const ProfileEvent.logoutButtonPressed()),
          ),
          if (kDebugMode)
            _ProfileOptionWidget(
              title: 'Crashlytics Test',
              icon: Icons.bug_report,
              onTap: () {
                FirebaseCrashlytics.instance.crash();
              },
            ),
        ],
      ),
    );
  }
}

class _ProfileOptionWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _ProfileOptionWidget({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title, style: const TextStyle(fontSize: 16)),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
