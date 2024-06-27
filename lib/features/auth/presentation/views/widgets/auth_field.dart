import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_pallete.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    required this.hintText,
    required this.controller,
    super.key,
    this.isObscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: isObscureText,
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(fontSize: 16.sp, color: Colors.black87),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16.sp),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppPallete.primary, size: 22.sp) : null,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return '$hintText is required';
          }
          return null;
        },
      ),
    );
  }
}
