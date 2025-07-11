import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart' hide Order;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_case/constants/locales.dart' as locale_constants;
import 'package:test_case/services/locale/locale_resources_service.dart';
import '../../services/logger/logger_service.dart';

const String _languageCodeKey = 'languageCode';
const String _accessTokenKey = 'accessToken';
const String _userIdKey = 'userId';
const String _rememberMeKey = 'rememberMe';
const String _themeModeKey = 'themeMode';

@LazySingleton(as: LocaleResourcesService)
class LocaleResourcesServiceImpl implements LocaleResourcesService {
  final SharedPreferences _sharedPreferences;
  final FlutterSecureStorage _secureStorage;
  final LoggerService _logger;

  LocaleResourcesServiceImpl(
      this._sharedPreferences, this._secureStorage, this._logger);

  @override
  Future<Option<String>> getAccessToken() async {
    final token = await _secureStorage.read(key: _accessTokenKey);
    _logger.d('Accessed token: $token');
    return optionOf(token);
  }

  @override
  Future<void> setAccessToken(String token) {
    _logger.d('Setting access token.');
    return _secureStorage.write(key: _accessTokenKey, value: token);
  }

  @override
  Future<void> deleteAccessToken() {
    _logger.d('Deleting access token.');
    return _secureStorage.delete(key: _accessTokenKey);
  }

  @override
  Future<void> setUserId(String userId) {
    _logger.d('Setting user ID: $userId');
    return _secureStorage.write(key: _userIdKey, value: userId);
  }

  @override
  Future<Option<String>> getUserId() async {
    final userId = await _secureStorage.read(key: _userIdKey);
    _logger.d('Accessed user ID: $userId');
    return optionOf(userId);
  }

  @override
  Future<void> deleteUserId() {
    _logger.d('Deleting user ID.');
    return _secureStorage.delete(key: _userIdKey);
  }

  @override
  bool getRememberMe() {
    final rememberMe = _sharedPreferences.getBool(_rememberMeKey) ?? false;
    _logger.d('Remember me status: $rememberMe');
    return rememberMe;
  }

  @override
  Future<void> setRememberMe(bool value) {
    _logger.d('Setting remember me to: $value');
    return _sharedPreferences.setBool(_rememberMeKey, value);
  }

  @override
  Future<void> clearSecureStorage() {
    _logger.i('Clearing secure storage.');
    return _secureStorage.deleteAll();
  }

  @override
  Future<void> deleteAll() async {
    _logger.i('Clearing all local data.');
    await _secureStorage.deleteAll();
    await _sharedPreferences.clear();
  }

  @override
  List<Locale> get supportedLocales {
    _logger.d('Getting supported locales.');
    return locale_constants.supportedLocales;
  }

  @override
  Future<Locale> getLocale() async {
    _logger.d('Getting current locale.');
    final languageCode = _sharedPreferences.getString(_languageCodeKey);
    if (languageCode == null) {
      _logger.i('No language code found in preferences, using device locale.');
      final deviceLocale = PlatformDispatcher.instance.locale;
      return supportedLocales.firstWhere(
        (l) => l.languageCode == deviceLocale.languageCode,
        orElse: () {
          _logger.w('Device locale not supported, defaulting to English.');
          return locale_constants.enLocale;
        },
      );
    }
    _logger.i('Using language code from preferences: $languageCode');
    return supportedLocales.firstWhere(
      (l) => l.languageCode == languageCode,
      orElse: () {
        _logger.w('Preferred locale not supported, defaulting to English.');
        return locale_constants.enLocale;
      },
    );
  }

  @override
  Future<void> setLocale(Locale locale) async {
    _logger.i('Setting locale to: ${locale.languageCode}');
    await _sharedPreferences.setString(_languageCodeKey, locale.languageCode);
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    _logger.d('Getting current theme mode.');
    final themeString = _sharedPreferences.getString(_themeModeKey);
    if (themeString == ThemeMode.light.toString()) {
      _logger.d('Theme mode is light.');
      return ThemeMode.light;
    }
    _logger.d('Theme mode is dark.');
    return ThemeMode.dark;
  }

  @override
  Future<void> setThemeMode(ThemeMode themeMode) async {
    _logger.i('Setting theme mode to: $themeMode');
    await _sharedPreferences.setString(_themeModeKey, themeMode.toString());
  }
}
