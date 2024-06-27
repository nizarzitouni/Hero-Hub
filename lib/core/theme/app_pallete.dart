import 'package:flutter/material.dart';

abstract class AppPallete {
  // Primary colors
  static const Color primary = Color(0xff2c9cdb);
  static const Color secondary = Color(0xffe77328);
  static const Color accent = Color(0xff3a4a5c);

  // Background colors
  static const Color background = Color(0xff181820); // Dark background
  static const Color surface = Color(0xfff0f4f8); // Light surface
  static const Color scaffold = Color(0xfff0f4f8); // Slightly darker than surface

  // Text colors
  static const Color textPrimary = Color(0xff020e0f);
  static const Color textSecondary = Color(0xff17384e);
  static const Color textAccent = Color(0xffeb6d26);

  // Neutral colors
  static const Color white = Colors.white;
  static const Color black = Color(0xff333333);
  static const Color black2 = Color(0xff020e0f);
  static const Color grey = Colors.grey;
  static const Color offWhite = Color(0xffcccccc);
  static const Color deepBlue = Color(0xff0e1017);

  // Utility colors
  static const Color border = Color(0xff505254);
  static const Color danger = Color(0xffF70000);
  static const Color success = Color(0xff04B616);

  // Gradient colors
  static const Color gradientStart = Color(0xffcc2c48);
  static const Color gradientEnd = Color(0xffbf298d);

  // Transparent
  static const Color transparent = Colors.transparent;

  //Other
  static const Color whiteGrey = Color(0xffe3e8ee);
  static const Color onBlack = Color(0xff353535);
}
