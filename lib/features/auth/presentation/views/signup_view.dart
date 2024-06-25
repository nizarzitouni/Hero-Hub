import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hero_hub/core/extensions/context_extension.dart';
import 'package:hero_hub/core/utility/spacing.dart';
import 'package:hero_hub/core/widgets/my_buttons.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utility/show_snackbar.dart';
import '../../../../core/widgets/loader.dart';
import '../manager/auth_cubit/auth_cubit.dart';
import '../manager/auth_cubit/auth_state.dart'; // Make sure to import the new state file
import 'widgets/auth_field.dart';
import 'widgets/terms_and_condition_widget.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          signUpSuccess: (_) {
            context.pop();
            showSnackBar(context: context, message: 'User Created');
          },
          signUpFailure: (errorMessage) => showSnackBar(context: context, message: errorMessage),
          orElse: () {},
        );
      },
      builder: (context, state) {
        final authCubit = BlocProvider.of<AuthCubit>(context);
        final isObscure = state.maybeWhen(
          obscurePasswordText: (isObscure) => isObscure,
          orElse: () => false,
        );
        return Scaffold(
          appBar: AppBar(),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Sign Up.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
                        verticalSpace(30),
                        AuthField(hintText: 'Name', controller: nameController),
                        verticalSpace(15),
                        AuthField(hintText: 'Email', controller: emailController),
                        verticalSpace(15),
                        AuthField(
                          hintText: 'Password',
                          controller: passwordController,
                          isObscureText: isObscure,
                          suffixIcon: IconButton(
                            icon: Icon(isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                            onPressed: authCubit.obscurePasswordText,
                          ),
                        ),
                        verticalSpace(15),
                        const TermsAndCondtionWidget(),
                        verticalSpace(15),
                        CustomFilledButton(
                          text: 'Sign Up',
                          width: double.infinity,
                          height: 55.h,
                          fontSize: 18,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              authCubit.signupWithEmailAndPassword(
                                name: nameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              );
                            }
                          },
                        ),
                        verticalSpace(15),
                        GestureDetector(
                          onTap: () => context.pop(),
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: Theme.of(context).textTheme.titleMedium,
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        color: AppPallete.secondary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        verticalSpace(25),
                      ],
                    ),
                  ),
                ),
              ),
              if (state is AuthenticationLoading) const Loader(),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
