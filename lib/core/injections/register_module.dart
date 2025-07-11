import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/durations.dart';
import '../../router/router.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get appRouter;

  @lazySingleton
  Connectivity get connectivity;

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          connectTimeout: timeoutDuration,
          receiveTimeout: timeoutDuration,
          sendTimeout: timeoutDuration,
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;
}
