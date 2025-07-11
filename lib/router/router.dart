import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/core/models/movie/movie.dart';
import 'package:test_case/features/home/presentation/pages/home_page.dart';
import 'package:test_case/features/profile/presentation/pages/profile_page.dart';

import '../features/auth/presentation/pages/auth_wrapper_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/register_page.dart';

import '../features/home/presentation/pages/home_nav_bar_page.dart';
import '../features/home/presentation/pages/movie_detail_page.dart';
import '../features/profile/presentation/pages/detailed_profile_page.dart';
import '../features/profile/presentation/pages/profile_image_update_page.dart';
import '../features/profile/presentation/pages/settings_page.dart';
import '../splash_page.dart';

part "router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Page|Screen|View|Widget|Tab,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(
          page: AuthWrapperRoute.page,
          children: [
            AutoRoute(page: LoginRoute.page, initial: true, path: 'login'),
            AutoRoute(page: RegisterRoute.page, path: 'register'),
          ],
        ),
        AutoRoute(
          page: ProfileImageUpdateRoute.page,
        ),
        AutoRoute(
          page: DetailedProfileRoute.page,
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
        AutoRoute(
          page: MovieDetailRoute.page,
        ),
        AutoRoute(
          page: HomeNavBarRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page, path: 'home', initial: true),
            AutoRoute(page: ProfileRoute.page, path: 'profile'),
          ],
        ),
      ];
}
