import 'package:flutter/material.dart';

import 'app_pallete.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.red,
    cardColor: Colors.white,
    scaffoldBackgroundColor: AppPallete.scaffold, //Colors.grey[200],
    shadowColor: AppPallete.transparent,
    //   appBarTheme: const AppBarTheme(
    //     backgroundColor: Pallete.backgroundColor,
    //     elevation: 0,
    //   ),
    //   bottomAppBarTheme: const BottomAppBarTheme(
    //     color: Pallete.backgroundColor,
    //     elevation: 0,
    //   ),
    //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //     backgroundColor: Pallete.blueColor,
    //   ),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[800],
    shadowColor: Colors.grey,
    //   appBarTheme: const AppBarTheme(
    //     backgroundColor: Pallete.backgroundColor,
    //     elevation: 0,
    //   ),
    //   bottomAppBarTheme: const BottomAppBarTheme(
    //     color: Pallete.backgroundColor,
    //     elevation: 0,
    //   ),
    //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //     backgroundColor: Pallete.blueColor,
    //   ),
  );
}
