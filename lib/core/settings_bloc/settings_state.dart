import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required ThemeMode themeMode,
    required Locale locale,
    required bool isNotificationsEnabled,
  }) = _SettingsState;
}
