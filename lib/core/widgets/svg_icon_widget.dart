import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SvgIconWidget extends StatelessWidget {
  SvgIconWidget({required this.assetName, super.key, this.size = 30, this.svgColor});
  final String assetName;
  double size;
  Color? svgColor;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return SvgPicture.asset(assetName, width: size, color: svgColor);
  }
}
