// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:test_case/core/injections/locator.dart';
import 'package:test_case/features/auth/domain/repositories/auth_repository.dart';
import 'package:test_case/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'constants/colors.dart';
import 'gen/assets.gen.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  final String? resetToken;
  final String? userId;

  const SplashPage({super.key, this.resetToken, this.userId});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Assets.images.sinFlixSplash.image(
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  // Başlatma ve yönlendirme mantığını ayrı bir metoda taşıdık.
  Future<void> _initializeApp() async {
    // 1. Native splash ekranını kaldır.
    FlutterNativeSplash.remove();

    // 2. AuthRepository'yi al.
    final authRepository = getIt<AuthRepository>();

    // 3. Oturumu geri yüklemeye çalış. Bu metod, geçerli bir token varsa
    // NetworkService'e set edecek.
    await authRepository.tryToRestoreSession();

    // 4. Oturumun geçerli olup olmadığını *tekrar* kontrol et.
    // tryToRestoreSession, süresi dolmuş token'ları temizlemiş olabilir.
    final isUserAuthenticated = await authRepository.isUserAuthenticated();

    // 5. Yönlendirmeyi yap.
    // Bu kodun bir build metodu içinde olmaması önemli,
    // bu yüzden `mounted` kontrolü eklemek en güvenlisidir.
    if (mounted) {
      if (isUserAuthenticated) {
        context.router.replace(const HomeNavBarRoute());
      } else {
        context.router.replace(const AuthWrapperRoute());
      }
    }
  }
}
