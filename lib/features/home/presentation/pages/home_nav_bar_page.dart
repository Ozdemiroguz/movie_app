import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_case/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/injections/locator.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
import '../../domain/repositories/movie_repository.dart';
import '../bloc/home_bloc.dart';
import '../../../profile/presentation/bloc/profile/profile_bloc.dart';
import '../../../profile/domain/repositories/profile_repository.dart';

@RoutePage()
class HomeNavBarPage extends StatelessWidget {
  const HomeNavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => HomeBloc(
                    getIt<MoviesRepository>(),
                  )),
          BlocProvider(
              create: (context) => ProfileBloc(
                    getIt<ProfileRepository>(),
                    getIt<AuthRepository>(),
                  )),
        ],
        child: AutoTabsRouter(
          routes: [
            HomeRoute(),
            ProfileRoute(),
          ],
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);
            return Scaffold(
              body: child,
              bottomNavigationBar:
                  _CustomBottomNavigationBar(tabsRouter: tabsRouter),
            );
          },
        ),
      ),
    );
  }
}

class _CustomBottomNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const _CustomBottomNavigationBar({required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      height: 71.h,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _BottomNavBarButton(
            icon: Assets.icons.component4,
            label: "home".tr(),
            isSelected: tabsRouter.activeIndex == 0,
            onTap: () => tabsRouter.setActiveIndex(0),
          ),
          SizedBox(width: 16.w),
          _BottomNavBarButton(
            icon: Assets.icons.component3,
            label: "profile".tr(),
            isSelected: tabsRouter.activeIndex == 1,
            onTap: () => tabsRouter.setActiveIndex(1),
          ),
        ],
      ),
    );
  }
}

class _BottomNavBarButton extends StatelessWidget {
  final SvgGenImage icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _BottomNavBarButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 135.w,
        height: 41.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(50),
            width: 1.r,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 6.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.svg(
              width: 28.w,
              height: 28.h,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.onSurface,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              label,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
