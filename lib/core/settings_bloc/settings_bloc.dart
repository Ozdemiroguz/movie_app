// lib/core/settings_bloc/settings_bloc.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_case/core/settings_bloc/settings_event.dart';
import 'package:test_case/core/settings_bloc/settings_state.dart';
import 'package:test_case/services/locale/locale_resources_service.dart';

import '../../constants/locales.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final LocaleResourcesService _localeResourcesService;
  SettingsBloc(
      this._localeResourcesService, @factoryParam ThemeMode? initialThemeMode)
      : super(
          SettingsState(
            themeMode: initialThemeMode ?? ThemeMode.dark,
            locale: supportedLocales.first,
            isNotificationsEnabled: true,
          ),
        ) {
    on<Initialized>(_onInitialized);
    on<ThemeChanged>(_onThemeChanged);
    on<LocaleChanged>(_onLocaleChanged);
  }

  Future<void> _onInitialized(
    Initialized event,
    Emitter<SettingsState> emit,
  ) async {
    final theme = await _localeResourcesService.getThemeMode();
    emit(state.copyWith(themeMode: theme));

    final locale = await _localeResourcesService.getLocale();
    emit(state.copyWith(locale: locale));
  }

  Future<void> _onThemeChanged(
    ThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _localeResourcesService.setThemeMode(event.themeMode);
    emit(state.copyWith(themeMode: event.themeMode));
  }

  Future<void> _onLocaleChanged(
    LocaleChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _localeResourcesService.setLocale(event.locale);
    emit(state.copyWith(locale: event.locale));
  }
}
