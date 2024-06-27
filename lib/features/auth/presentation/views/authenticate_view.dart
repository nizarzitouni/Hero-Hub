// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/assets_constants.dart';
// import '../../../../core/config/app_information.dart';
// import '../../../../core/theme/app_pallete.dart';
// import '../../../../core/theme/app_text_styles.dart';
// import '../../../../core/utility/show_snackbar.dart';
// import '../../../../core/widgets/loader.dart';
// import '../manager/auth_cubit/auth_cubit.dart';
// import 'widgets/continue_with_google_button.dart';
// import 'widgets/privacy_text.dart';

// class AuthenticateView extends StatelessWidget {
//   const AuthenticateView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<AuthCubit, AuthState>(
//         listener: (context, state) {
//           if (state is AuthSuccessState) {
//             customReplacementNamed(context, AppRouter.kEntryPointView);
//           } else if (state is AuthFailureState) {
//             showSnackBar(context, state.errorMessage);
//           }
//         },
//         builder: (context, state) {
//           return Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Welcome to\n${AppInformation.title}',
//                         style: AppTextStyles.big25TitlesBold,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 20),
//                       const Text(
//                         'Create and account or log in to continue',
//                         style: AppTextStyles.sm18Titles400,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 30),
//                       const ContinueWithGoogleButton(),
//                       const SizedBox(height: 30),
//                       CustomOutlinedButton(
//                         func: () => customReplacementNamed(context, AppRouter.kEntryPointView),
//                         btnText: 'Continue As a Guest   ',
//                         btnIcon: Image.asset(AssetsConstants.guestImage, height: 30, color: AppPallete.whiteColor),
//                         btnRadius: 25,
//                       ),
//                       const SizedBox(height: 60),
//                       const PrivacyText(),
//                     ],
//                   ),
//                 ),
//               ),
//               if (state is AuthLoadingState) const Loader(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
