import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_case/constants/constans.dart';
import 'package:test_case/constants/locales.dart';
import 'package:test_case/constants/sizes.dart';
import 'package:test_case/core/injections/locator.dart';
import 'package:test_case/core/settings_bloc/settings_bloc.dart';
import 'package:test_case/core/settings_bloc/settings_event.dart';
import 'package:test_case/core/settings_bloc/settings_state.dart';
import 'package:test_case/router/router.dart';
import 'package:test_case/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: languagePath,
      fallbackLocale: trLocale,
      saveLocale: true,
      child: BlocProvider(
        create: (context) =>
            getIt<SettingsBloc>()..add(const SettingsEvent.initialized()),
        child: ScreenUtilInit(
          designSize: designSize,
          builder: (context, child) => GestureDetector(
            onTap: () => unfocus(context),
            child: BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
                final themeData = state.themeMode == ThemeMode.light
                    ? AppTheme.lightTheme
                    : AppTheme.darkTheme;

                final appRouter = getIt<AppRouter>();

                return MaterialApp.router(
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  routerDelegate: AutoRouterDelegate(
                    appRouter,
                    navigatorObservers: () => [AutoRouteObserver()],
                  ),
                  routeInformationParser: appRouter.defaultRouteParser(),
                  debugShowCheckedModeBanner: false,
                  title: appName,
                  theme: themeData,
                  builder: (context, child) => MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                        textScaler: TextScaler.noScaling, boldText: false),
                    child: child!,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void unfocus(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
