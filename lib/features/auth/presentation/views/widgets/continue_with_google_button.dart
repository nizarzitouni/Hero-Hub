// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../../core/assets_constants.dart';
// import '../../../../../core/services/service_locator.dart';
// import '../../../../../core/theme/app_pallete.dart';
// import '../../../../../core/theme/app_text_styles.dart';
// import '../../manager/auth_cubit/auth_cubit.dart';

// class ContinueWithGoogleButton extends StatelessWidget {
//   const ContinueWithGoogleButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 395.w,
//       height: 50.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: AppPallete.white,
//       ),
//       child: ElevatedButton(
//         onPressed: () => serviceLocator<AuthCubit>().authenticateWithGoogle(),
//         style: ElevatedButton.styleFrom(
//           // fixedSize: const Size(395, 50),
//           backgroundColor: AppPallete.transparent,
//           shadowColor: AppPallete.transparent,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SvgPicture.asset(AssetsConstants.googleSVG, height: 30),
//             const SizedBox(width: 12),
//             Text(
//               'Continue with Google',
//               style: AppTextStyles.mid18Titles400,
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
