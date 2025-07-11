// import 'package:auto_route/auto_route.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../constants/colors.dart';
// import '../../../../constants/text_styles.dart';
// import '../../../../custom/custom_filled_button.dart';
// import '../../../../gen/assets.gen.dart';
// import '../../../../router/router.dart';

// //@RoutePage()
// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: AppColors.background,
//       child: const Stack(
//         fit: StackFit.expand,
//         children: [
//           _IntroLogo(),
//           _BottomButtons(),
//         ],
//       ),
//     );
//   }
// }

// class _IntroLogo extends StatelessWidget {
//   const _IntroLogo();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 120.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Assets.icons.show.svg(
//             width: 200.r,
//             height: 130.r,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _BottomButtons extends StatelessWidget {
//   const _BottomButtons();

//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;

//     return Positioned(
//       bottom: 30.h,
//       child: SizedBox(
//         width: screenWidth,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _LoginButton(),
//             _SkipButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _LoginButton extends StatelessWidget {
//   const _LoginButton();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 350.w,
//       height: 60.h,
//       child: CustomFilledButton(
//         onPressed: () {
//           context.router.push(const LoginRoute());
//         },
//         child: Text(
//           'login'.tr(),
//           style: labelMedium.copyWith(
//             color: const Color(0xffffffff),
//             fontWeight: FontWeight.w600,
//             fontSize: 16.sp,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _SkipButton extends StatelessWidget {
//   const _SkipButton();

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 350.w,
//       height: 60.r,
//       child: TextButton(
//         style: TextButtonTheme.of(context).style?.copyWith(
//               overlayColor: WidgetStateProperty.resolveWith<Color>(
//                 (states) => Colors.transparent,
//               ),
//             ),
//         onPressed: () {
//           // TODO: Implement skip functionality
//         },
//         child: Text(
//           'skip'.tr(),
//           style: labelMedium.copyWith(
//             color: const Color(0xffffffff),
//             fontWeight: FontWeight.w600,
//             fontSize: 16.sp,
//           ),
//         ),
//       ),
//     );
//   }
// }
