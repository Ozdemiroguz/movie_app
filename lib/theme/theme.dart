import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_case/constants/colors.dart';
import 'package:test_case/constants/font_sizes.dart';
import 'package:test_case/constants/text_styles.dart';

import '../constants/system_ui_overlay_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: _lightColorScheme,
      scaffoldBackgroundColor: AppColors.white,
      filledButtonTheme: _filledButtonThemeData(isDark: false),
      floatingActionButtonTheme: _floatingActionButtonThemeData(isDark: false),
      cupertinoOverrideTheme: _cupertinoThemeData(isDark: false),
      inputDecorationTheme: _inputDecorationTheme(isDark: false),
      textButtonTheme: _textButtonThemeData(isDark: false),
      iconButtonTheme: _iconButtonThemeData(isDark: false),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.background,
        selectionColor: AppColors.background.withAlpha(50),
        selectionHandleColor: AppColors.background,
      ),
      dialogTheme: _dialogTheme(isDark: false),
      primaryColor: AppColors.brandColor,
      primaryTextTheme: _textTheme(isDark: false),
      popupMenuTheme: _popupMenuThemeData(isDark: false),
      dividerTheme: _dividerThemeData(isDark: false),
      dividerColor: AppColors.background.withAlpha(25),
      drawerTheme: _drawerThemeData(isDark: false),
      appBarTheme: _appBarTheme(isDark: false),
      textTheme: _textTheme(isDark: false),
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: _darkColorScheme,
      scaffoldBackgroundColor: AppColors.background,
      filledButtonTheme: _filledButtonThemeData(isDark: true),
      floatingActionButtonTheme: _floatingActionButtonThemeData(isDark: true),
      cupertinoOverrideTheme: _cupertinoThemeData(isDark: true),
      inputDecorationTheme: _inputDecorationTheme(isDark: true),
      textButtonTheme: _textButtonThemeData(isDark: true),
      iconButtonTheme: _iconButtonThemeData(isDark: true),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.white,
        selectionColor: AppColors.white.withAlpha(50),
        selectionHandleColor: AppColors.white,
      ),
      dialogTheme: _dialogTheme(isDark: true),
      primaryColor: AppColors.brandColor,
      primaryTextTheme: _textTheme(isDark: true),
      popupMenuTheme: _popupMenuThemeData(isDark: true),
      dividerTheme: _dividerThemeData(isDark: true),
      dividerColor: AppColors.white.withAlpha(25),
      drawerTheme: _drawerThemeData(isDark: true),
      appBarTheme: _appBarTheme(isDark: true),
      textTheme: _textTheme(isDark: true),
      useMaterial3: true,
    );
  }
}

final _lightColorScheme = ColorScheme.light(
  primary: AppColors.brandColor,
  onPrimary: AppColors.white,
  onSecondary: AppColors.white,
  secondary: AppColors.background,
);

final _darkColorScheme = ColorScheme.dark(
  primary: AppColors.brandColor,
  onPrimary: AppColors.white,
  onSecondary: AppColors.background,
  secondary: AppColors.white,
);

FilledButtonThemeData _filledButtonThemeData({required bool isDark}) {
  return FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size.fromHeight(60.r)),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return (isDark ? AppColors.white : AppColors.background)
                .withAlpha(50);
          } else {
            return AppColors.brandColor;
          }
        },
      ),
      side: const WidgetStatePropertyAll(BorderSide.none),
      padding: WidgetStatePropertyAll(
          EdgeInsets.only(top: 17.r, bottom: 17.r, left: 20.r, right: 20.r)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.r)),
      ),
      textStyle:
          WidgetStatePropertyAll(displayLarge.copyWith(color: AppColors.white)),
      foregroundColor: const WidgetStatePropertyAll(AppColors.white),
      elevation: const WidgetStatePropertyAll(0),
    ),
  );
}

PopupMenuThemeData _popupMenuThemeData({required bool isDark}) {
  return PopupMenuThemeData(
    color: isDark ? AppColors.background : AppColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    elevation: 0,
    textStyle: titleMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.background),
  );
}

FloatingActionButtonThemeData _floatingActionButtonThemeData(
    {required bool isDark}) {
  return FloatingActionButtonThemeData(
    backgroundColor: AppColors.brandColor,
    foregroundColor: isDark ? AppColors.background : AppColors.white,
    elevation: 0,
    focusElevation: 0,
    hoverElevation: 0,
    extendedIconLabelSpacing: 0,
    highlightElevation: 0,
    disabledElevation: 0,
    extendedPadding: EdgeInsets.zero,
    sizeConstraints: BoxConstraints.tightFor(width: 60.r, height: 60.r),
    extendedSizeConstraints: BoxConstraints.tightFor(width: 60.r, height: 60.r),
    smallSizeConstraints: BoxConstraints.tightFor(width: 60.r, height: 60.r),
    largeSizeConstraints: BoxConstraints.tightFor(width: 60.r, height: 60.r),
    iconSize: 36.r,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(100.r),
      ),
    ),
  );
}

CupertinoThemeData _cupertinoThemeData({required bool isDark}) {
  return CupertinoThemeData(
    primaryColor: AppColors.brandColor,
    applyThemeToAll: true,
    scaffoldBackgroundColor: isDark ? AppColors.background : AppColors.white,
    barBackgroundColor: isDark ? AppColors.background : AppColors.white,
    brightness: isDark ? Brightness.dark : Brightness.light,
  );
}

InputDecorationTheme _inputDecorationTheme({required bool isDark}) {
  final color = isDark ? AppColors.white : AppColors.background;
  return InputDecorationTheme(
    filled: true,
    fillColor: color.withAlpha(25),
    iconColor: color,
    suffixIconColor: color,
    prefixIconColor: color,
    hintStyle: labelSmall.copyWith(color: color.withAlpha(125)),
    labelStyle: labelSmall.copyWith(color: color.withAlpha(125)),
    errorStyle: labelSmall.copyWith(color: AppColors.error),
    errorMaxLines: 2,
    floatingLabelStyle: labelSmall.copyWith(color: color.withAlpha(125)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: color.withAlpha(50)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: color.withAlpha(50)),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: color.withAlpha(50)),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: color.withAlpha(25)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: AppColors.brandColor.withAlpha(50)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.r),
      borderSide: BorderSide(color: color.withAlpha(50)),
    ),
  );
}

TextButtonThemeData _textButtonThemeData({required bool isDark}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: WidgetStatePropertyAll(
          isDark ? AppColors.white : AppColors.background),
      backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
      textStyle:
          WidgetStatePropertyAll(labelSmall.copyWith(fontSize: fontSize14)),
    ),
  );
}

IconButtonThemeData _iconButtonThemeData({required bool isDark}) =>
    IconButtonThemeData(style: _iconButtonStyle);

final _iconButtonStyle = ButtonStyle(
  foregroundColor: const WidgetStatePropertyAll(AppColors.brandColor),
  backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
  iconColor: const WidgetStatePropertyAll(AppColors.brandColor),
  padding: WidgetStatePropertyAll(EdgeInsets.all(10.r)),
  shape: const WidgetStatePropertyAll(CircleBorder()),
);

DialogThemeData _dialogTheme({required bool isDark}) {
  return DialogThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    contentTextStyle: displaySmall.copyWith(
        color: isDark ? AppColors.white : AppColors.background),
    titleTextStyle: titleMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.background),
    backgroundColor: isDark ? AppColors.background : AppColors.white,
    elevation: 0,
  );
}

DividerThemeData _dividerThemeData({required bool isDark}) {
  return DividerThemeData(
    color: (isDark ? AppColors.white : AppColors.background).withAlpha(25),
    thickness: 1.r,
    space: 0,
  );
}

DrawerThemeData _drawerThemeData({required bool isDark}) {
  return DrawerThemeData(
    backgroundColor: isDark ? AppColors.background : AppColors.white,
    elevation: 0,
  );
}

AppBarTheme _appBarTheme({required bool isDark}) {
  return AppBarTheme(
    iconTheme: _iconThemeData,
    systemOverlayStyle:
        isDark ? systemUiOverlayDarkStyle : systemUiOverlayLightStyle,
    actionsIconTheme: _iconThemeData,
    titleTextStyle: titleMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.background),
    foregroundColor: isDark ? AppColors.white : AppColors.background,
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
  );
}

final _iconThemeData = IconThemeData(
  color: AppColors.brandColor,
  size: 72,
);

TextTheme _textTheme({required bool isDark}) {
  final color = isDark ? AppColors.white : AppColors.background;
  return TextTheme(
    titleSmall: titleSmall.copyWith(color: color),
    titleMedium: titleMedium.copyWith(color: color),
    titleLarge: titleLarge.copyWith(color: color),
    labelSmall: labelSmall.copyWith(color: color),
    labelMedium: labelMedium.copyWith(color: color),
    displaySmall: displaySmall.copyWith(color: color),
    displayMedium: displayMedium.copyWith(color: color),
    displayLarge: displayLarge.copyWith(color: color),
  );
}
