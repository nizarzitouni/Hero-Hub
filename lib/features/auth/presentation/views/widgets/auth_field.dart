import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    required this.hintText,
    required this.controller,
    super.key,
    this.isObscureText = false,
    this.suffixIcon,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(27),
        enabledBorder: _inputBorder(),
        focusedBorder: _inputBorder(AppPallete.gradientEnd),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing!';
        }
        return null;
      },
    );
  }
}

OutlineInputBorder _inputBorder([Color color = AppPallete.primary]) => OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10),
    );
