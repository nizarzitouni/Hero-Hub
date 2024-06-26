import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_pallete.dart';

abstract class AppTextStyles {
  static TextStyle big28TitlesBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppPallete.primary,
    fontFamily: poppins,
  );
  static TextStyle big25TitlesBold = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
    color: AppPallete.primary,
    fontFamily: poppins,
  );
  static TextStyle big22TitlesW600 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppPallete.primary,
    fontFamily: poppins,
  );
  static TextStyle sm18Titles400 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppPallete.secondary,
    fontFamily: poppins,
  );
  static TextStyle mid18Titles400 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppPallete.black,
    fontFamily: poppins,
  );

  //----------------
  // New Styles
  static TextStyle bodyText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppPallete.black,
    fontFamily: poppins, // Assuming you want a different font for body text
  );

  static TextStyle captionText = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: AppPallete.grey,
    fontFamily: poppins,
  );

  static TextStyle subtitleText = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppPallete.primary,
    fontFamily: poppins,
  );

  static TextStyle emphasizedText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppPallete.accent,
    fontFamily: poppins,
    decoration: TextDecoration.underline,
  );
}

// Text Styles
const kFontSizeSuperSmall = 10.0;
const kFontSizeNormal = 16.0;
const kFontSizeMedium = 18.0;
const kFontSizeLarge = 96.0;

const String poppins = 'Poppins';
