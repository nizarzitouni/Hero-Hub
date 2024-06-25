import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/core/widgets/my_buttons.dart';
import 'package:hero_hub/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CustomFilledButton(
            text: 'SIGN OUT',
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
          ),
        ),
      ),
    );
  }
}
