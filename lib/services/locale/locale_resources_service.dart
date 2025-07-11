import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

abstract class LocaleResourcesService {
  Future<Option<String>> getAccessToken();
  Future<void> setAccessToken(String token);
  Future<void> deleteAccessToken();
  Future<void> setUserId(String userId);
  Future<Option<String>> getUserId();
  Future<void> deleteUserId();

  bool getRememberMe();
  Future<void> setRememberMe(bool value);

  Future<void> clearSecureStorage();
  Future<void> deleteAll();

  Future<void> setLocale(Locale locale);
  Future<Locale> getLocale();
  List<Locale> get supportedLocales;

  Future<void> setThemeMode(ThemeMode themeMode);
  Future<ThemeMode> getThemeMode();
}
