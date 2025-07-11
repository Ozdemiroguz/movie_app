import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_case/core/settings_bloc/settings_bloc.dart';
import 'package:test_case/core/settings_bloc/settings_event.dart';
import 'package:test_case/core/settings_bloc/settings_state.dart';
import 'package:test_case/custom/custom_app_bar.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'settings'.tr(),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              _ThemeSetting(state: state),
              const Divider(),
              _LanguageSetting(state: state),
              const Divider(),
              _NotificationSetting(state: state),
            ],
          );
        },
      ),
    );
  }
}

class _ThemeSetting extends StatelessWidget {
  final SettingsState state;
  const _ThemeSetting({required this.state});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: Text('dark_mode'.tr()),
      value: state.themeMode == ThemeMode.dark,
      onChanged: (bool value) {
        final themeMode = value ? ThemeMode.dark : ThemeMode.light;
        context.read<SettingsBloc>().add(SettingsEvent.themeChanged(themeMode));
      },
      secondary: const Icon(Icons.brightness_6),
    );
  }
}

class _LanguageSetting extends StatelessWidget {
  final SettingsState state;
  const _LanguageSetting({required this.state});

  @override
  Widget build(BuildContext context) {
    final supportedLocales = context.supportedLocales;
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text('language'.tr()),
      trailing: DropdownButton<Locale>(
        value: EasyLocalization.of(context)?.locale,
        onChanged: (Locale? newLocale) {
          if (newLocale != null) {
            // EasyLocalization'ı anında güncelle
            context.setLocale(newLocale);
            // SettingsBloc'a da kaydet
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.localeChanged(newLocale));
          }
        },
        items: supportedLocales.map((locale) {
          return DropdownMenuItem(
            value: locale,
            child: Text(_getLanguageName(locale.languageCode)),
          );
        }).toList(),
      ),
    );
  }

  String _getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'tr':
        return 'Türkçe';
      case 'en':
        return 'English';
      default:
        return languageCode;
    }
  }
}

class _NotificationSetting extends StatelessWidget {
  final SettingsState state;
  const _NotificationSetting({required this.state});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: Text('notifications'.tr()),
      value: state.isNotificationsEnabled,
      onChanged: (bool value) {
        // TODO: Implement notifications toggle event
      },
      secondary: const Icon(Icons.notifications),
    );
  }
}
