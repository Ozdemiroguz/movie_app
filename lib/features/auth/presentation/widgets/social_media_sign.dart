import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';

class SocialMediaSign extends ConsumerWidget {
  const SocialMediaSign({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialMediaSignButton(
          icon: Assets.icons.google,
          onPressed: () {
            // TODO: Implement Google sign in
          },
        ),
        SizedBox(width: 20.w),
        _SocialMediaSignButton(
          icon: Assets.icons.facebook,
          onPressed: () {
            // TODO: Implement Facebook sign in
          },
        ),
        SizedBox(width: 20.w),
        _SocialMediaSignButton(
          icon: Assets.icons.apple,
          onPressed: () {
            // TODO: Implement Apple sign in
          },
        ),
      ],
    );
  }
}

class _SocialMediaSignButton extends StatelessWidget {
  final SvgGenImage icon;
  final VoidCallback onPressed;

  const _SocialMediaSignButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(50),
            width: 1.r,
          ),
          color: Theme.of(context).colorScheme.onPrimary.withAlpha(25),
          borderRadius: BorderRadius.circular(18.r),
        ),
        padding: EdgeInsets.all(19.r),
        width: 60.w,
        height: 60.h,
        child: icon.svg(),
      ),
    );
  }
}
