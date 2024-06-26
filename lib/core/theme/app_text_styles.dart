import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_pallete.dart';

abstract class AppTextStyles {
  static TextStyle big28TitlesBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppPallete.primary,
    fontFamily: 'Pacifico',
  );
  static TextStyle big25TitlesBold = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
    color: AppPallete.primary,
    fontFamily: 'Pacifico',
  );
  static TextStyle big22TitlesW600 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppPallete.primary,
    fontFamily: "Pacifico",
  );
  static TextStyle sm18Titles400 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppPallete.secondary,
    fontFamily: 'Pacifico',
  );
  static TextStyle mid18Titles400 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppPallete.black,
    fontFamily: 'Pacifico',
  );
}

// Text Styles
const kFontSizeSuperSmall = 10.0;
const kFontSizeNormal = 16.0;
const kFontSizeMedium = 18.0;
const kFontSizeLarge = 96.0;
