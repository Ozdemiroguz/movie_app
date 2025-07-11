// lib/main.dart

import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'constants/system_ui_overlay_styles.dart';
import 'core/injections/locator.dart';
import 'firebase_options.dart';
import 'my_app.dart';
import 'services/logger/logger_service.dart';
import 'utils/http_overrides.dart';

String appVersion = '';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      await configureDependencies();

      final logger = getIt<LoggerService>();

      FlutterError.onError = (details) {
        logger.e(
          "Flutter Error: Yakalanan Framework Hatası",
          error: details.exception,
          stackTrace: details.stack,
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        logger.e(
          "Platform Dispatcher Error: Yakalanan Platform Hatası",
          error: error,
          stackTrace: stack,
        );
        return true;
      };

      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDarkStyle);
      SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      );

      HttpOverrides.global = MyHttpOverrides();
      appVersion = (await PackageInfo.fromPlatform()).version;

      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    },
    (error, stack) {
      if (getIt.isRegistered<LoggerService>()) {
        getIt<LoggerService>().e(
          "Async/Zone Error: Yakalanan Asenkron Hata",
          error: error,
          stackTrace: stack,
        );
      } else {
        debugPrint(error.toString());
      }
    },
  );
}
