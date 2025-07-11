import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../gen/assets.gen.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        // Ekran kenarlarından biraz boşluk bırakarak taşmayı önler.
        padding: const EdgeInsets.all(20.0),
        child: ConstrainedBox(
          // Maksimum genişlik ve yükseklik sınırı.
          constraints: const BoxConstraints(
            maxWidth: 400.0,
            maxHeight: 400.0,
          ),
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // İçerik kadar yer kapla
              children: [
                Lottie.asset(
                  Assets.lottie.loadingAnimationBoredHand,
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),
                Text(
                  'loading'.tr(),
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
