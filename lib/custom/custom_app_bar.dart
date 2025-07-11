import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_icon_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final double? leadingWidth;
  final double? toolbarHeight;
  final double bottomHeight;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.leadingWidth,
    this.toolbarHeight,
    this.bottom,
    this.bottomHeight = 0,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight ?? 56.h,
      leadingWidth: leadingWidth ?? 72,
      leading: leading ??
          CustomIconWidget.backButton(
            onTap: onBackPressed ?? () => AutoRouter.of(context).pop(),
          ),
      title: title != null
          ? Text(
              title!,
              style: Theme.of(context).textTheme.displayLarge,
            )
          : null,
      actions: actions,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight((toolbarHeight ?? 24.h) + 80.h);
}
