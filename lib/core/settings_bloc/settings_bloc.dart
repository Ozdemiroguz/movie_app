// lib/core/settings_bloc/settings_bloc.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_case/core/settings_bloc/settings_event.dart';
import 'package:test_case/core/settings_bloc/settings_state.dart';
import 'package:test_case/services/locale/locale_resources_service.dart';
import 'package:test_case/services/logger/logger_service.dart';

import '../../constants/locales.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final LocaleResourcesService _localeResourcesService;
  final LoggerService _logger;
  SettingsBloc(this._localeResourcesService, this._logger,
      @factoryParam ThemeMode? initialThemeMode)
      : super(
          SettingsState(
            themeMode: initialThemeMode ?? ThemeMode.dark,
            locale: supportedLocales.first,
            isNotificationsEnabled: true,
          ),
        ) {
    on<Initialized>((event, emit) async {
      _logger.i('SettingsBloc Initialized event received.');
      await _onInitialized(event, emit);
    });
    on<ThemeChanged>((event, emit) async {
      _logger.i(
          'SettingsBloc ThemeChanged event received. New theme: ${event.themeMode}');
      await _onThemeChanged(event, emit);
    });
    on<LocaleChanged>((event, emit) async {
      _logger.i(
          'SettingsBloc LocaleChanged event received. New locale: ${event.locale}');
      await _onLocaleChanged(event, emit);
    });
  }

  Future<void> _onInitialized(
    Initialized event,
    Emitter<SettingsState> emit,
  ) async {
    _logger.d('Fetching initial theme mode...');
    final theme = await _localeResourcesService.getThemeMode();
    emit(state.copyWith(themeMode: theme));
    _logger.d('Initial theme mode set to: $theme');

    _logger.d('Fetching initial locale...');
    final locale = await _localeResourcesService.getLocale();
    emit(state.copyWith(locale: locale));
    _logger.d('Initial locale set to: $locale');
  }

  Future<void> _onThemeChanged(
    ThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    _logger.d('Setting theme mode to: ${event.themeMode}');
    await _localeResourcesService.setThemeMode(event.themeMode);
    emit(state.copyWith(themeMode: event.themeMode));
    _logger.d('Theme mode updated to: ${event.themeMode}');
  }

  Future<void> _onLocaleChanged(
    LocaleChanged event,
    Emitter<SettingsState> emit,
  ) async {
    _logger.d('Setting locale to: ${event.locale}');
    await _localeResourcesService.setLocale(event.locale);
    emit(state.copyWith(locale: event.locale));
    _logger.d('Locale updated to: ${event.locale}');
  }
}
