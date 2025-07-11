import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class CustomIconWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final String? svgPath;
  final double? size;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const CustomIconWidget({
    super.key,
    this.onTap,
    this.icon,
    this.svgPath,
    this.size,
    this.iconColor,
    this.backgroundColor,
    this.borderColor,
    this.margin,
    this.padding,
  });

  // Back button factory constructor
  factory CustomIconWidget.backButton({
    VoidCallback? onTap,
    Color? iconColor,
    Color? backgroundColor,
    Color? borderColor,
    EdgeInsets? margin,
  }) {
    return CustomIconWidget(
      onTap: onTap,
      size: 44,
      margin: margin ?? const EdgeInsets.only(left: 24),
      padding: const EdgeInsets.all(10),
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      svgPath: 'component14', // Assets.icons.component14 için
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        width: size ?? 44,
        height: size ?? 44,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ??
              Theme.of(context).colorScheme.onSurface.withAlpha(25),
          border: Border.all(
            color: borderColor ??
                Theme.of(context).colorScheme.onSurface.withAlpha(50),
            width: 1,
          ),
        ),
        padding: padding ?? const EdgeInsets.all(10),
        child: _buildIcon(context),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    final color = iconColor ?? Theme.of(context).colorScheme.onSurface;

    if (svgPath != null) {
      // SVG icon
      switch (svgPath) {
        case 'component14':
          return Assets.icons.component14.svg(
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          );
        case 'heart':
          return Assets.icons.heart.svg(
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          );
        // Diğer SVG'ler için case'ler eklenebilir
        default:
          return Assets.icons.component14.svg(
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          );
      }
    } else if (icon != null) {
      // Material icon
      return Icon(
        icon,
        color: color,
        size: (size ?? 44) * 0.6, // Icon boyutunu container'a göre ayarla
      );
    }

    // Default fallback
    return Icon(
      Icons.arrow_back,
      color: color,
      size: (size ?? 44) * 0.6,
    );
  }
}
