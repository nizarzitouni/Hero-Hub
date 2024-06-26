import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

extension ContextExt on BuildContext {
  // //color
  // MyColors get color => Theme.of(this).extension<MyColors>()!;

  // // images
  // MyAssets get assets => Theme.of(this).extension<MyAssets>()!;

  // style
  TextStyle get big28TitlesBold => AppTextStyles.big28TitlesBold;
  TextStyle get big25TitlesBold => AppTextStyles.big25TitlesBold;
  TextStyle get big22TitlesW600 => AppTextStyles.big22TitlesW600;
  TextStyle get sm18Titles400 => AppTextStyles.sm18Titles400;
  TextStyle get mid18Titles400 => AppTextStyles.mid18Titles400;

// Language
  // String translate(String langkey) {
  //   return AppLocalizations.of(this)!.translate(langkey).toString();
  // }

  //Navigation

  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }

  void pop() => Navigator.of(this).pop();
}
