import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_case/constants/locales.dart' as locale_constants;
import 'package:test_case/services/locale/locale_resources_service.dart';

const String _languageCodeKey = 'languageCode';
const String _accessTokenKey = 'accessToken';
const String _userIdKey = 'userId';
const String _rememberMeKey = 'rememberMe';
const String _themeModeKey = 'themeMode';

@LazySingleton(as: LocaleResourcesService)
class LocaleResourcesServiceImpl implements LocaleResourcesService {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage _secureStorage;

  LocaleResourcesServiceImpl(this._sharedPreferences, this._secureStorage);

  @override
  Future<Option<String>> getAccessToken() async {
    final token = await _secureStorage.read(key: _accessTokenKey);
    return optionOf(token);
  }

  @override
  Future<void> setAccessToken(String token) =>
      _secureStorage.write(key: _accessTokenKey, value: token);

  @override
  Future<void> deleteAccessToken() =>
      _secureStorage.delete(key: _accessTokenKey);

  @override
  Future<void> setUserId(String userId) =>
      _secureStorage.write(key: _userIdKey, value: userId);

  @override
  Future<Option<String>> getUserId() async {
    final userId = await _secureStorage.read(key: _userIdKey);
    return optionOf(userId);
  }

  @override
  Future<void> deleteUserId() => _secureStorage.delete(key: _userIdKey);

  @override
  bool getRememberMe() => _sharedPreferences.getBool(_rememberMeKey) ?? false;

  @override
  Future<void> setRememberMe(bool value) =>
      _sharedPreferences.setBool(_rememberMeKey, value);

  @override
  Future<void> clearSecureStorage() => _secureStorage.deleteAll();

  @override
  Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
    await _sharedPreferences.clear();
  }

  @override
  List<Locale> get supportedLocales => locale_constants.supportedLocales;

  @override
  Future<Locale> getLocale() async {
    final languageCode = _sharedPreferences.getString(_languageCodeKey);
    if (languageCode == null) {
      final deviceLocale = PlatformDispatcher.instance.locale;
      return supportedLocales.firstWhere(
        (l) => l.languageCode == deviceLocale.languageCode,
        orElse: () => locale_constants.enLocale,
      );
    }
    return supportedLocales.firstWhere(
      (l) => l.languageCode == languageCode,
      orElse: () => locale_constants.enLocale,
    );
  }

  @override
  Future<void> setLocale(Locale locale) async {
    await _sharedPreferences.setString(_languageCodeKey, locale.languageCode);
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final themeString = _sharedPreferences.getString(_themeModeKey);
    if (themeString == ThemeMode.light.toString()) {
      return ThemeMode.light;
    }
    return ThemeMode.dark;
  }

  @override
  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _sharedPreferences.setString(_themeModeKey, themeMode.toString());
  }
}
