import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialized() = Initialized;
  const factory SettingsEvent.localeChanged(Locale locale) = LocaleChanged;
  const factory SettingsEvent.themeChanged(ThemeMode themeMode) = ThemeChanged;
}
