import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test_case/gen/assets.gen.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;
  final VoidCallback onRetry;

  const CustomErrorWidget({
    super.key,
    this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.notFound,
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Text(
              message ?? 'unexpected_error'.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: onRetry,
              child: Text('retry'.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
