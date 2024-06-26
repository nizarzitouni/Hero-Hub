import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/utility/spacing.dart';
import '../../../../core/utility/utiles.dart';
import '../functions/user_loged_in.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_pallete.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../core/widgets/my_buttons.dart';
import '../manager/auth_cubit/auth_cubit.dart';
import '../manager/auth_cubit/auth_state.dart'; // Make sure to import the new state file
import 'widgets/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          signInSuccess: (user) {
            userAuthenticated(true);
            showSnackBar(context: context, message: 'Welcome');
            context.pushReplacementNamed(Routes.kEntryPointView);
          },
          signInFailure: (errorMessage) => showSnackBar(context: context, message: errorMessage),
          orElse: () {},
        );
      },
      builder: (context, state) {
        final authCubit = BlocProvider.of<AuthCubit>(context);
        final isObscure = state.maybeWhen(
          obscurePasswordText: (isObscure) => isObscure,
          orElse: () => false,
        );

        return Stack(
          children: [
            Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign In.',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                      const SizedBox(height: 30),
                      AuthField(
                        hintText: 'Email',
                        controller: _emailController,
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 15),
                      AuthField(
                        hintText: 'Password',
                        controller: _passwordController,
                        isObscureText: isObscure,
                        prefixIcon: Icons.lock,
                        suffixIcon: IconButton(
                          icon: Icon(isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                          onPressed: authCubit.obscurePasswordText,
                        ),
                      ),
                      const SizedBox(height: 15),
                      CustomFilledButton(
                        text: 'Sign In',
                        width: double.infinity,
                        height: 50.h,
                        fontSize: 18,
                        onPressed: () {
                          // Unfocus the current focus node to hide the keyboard
                          FocusScope.of(context).unfocus();
                          if (formKey.currentState!.validate()) {
                            authCubit.sigInWithEmailAndPassword(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                            );
                          }
                        },
                      ),
                      verticalSpace(15),
                      CustomFilledButton(
                        text: 'Continue As Guest',
                        width: double.infinity,
                        height: 50.h,
                        fontSize: 18,
                        onPressed: () {
                          // context.pushReplacementNamed(Routes.kEntryPointView);
                          showSnackBar(context: context, message: 'Coming soon');
                        },
                      ),
                      verticalSpace(20),
                      GestureDetector(
                        onTap: () => context.pushName(Routes.kSignUpView),
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: AppPallete.secondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (state is AuthenticationLoading) const Loader(),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
