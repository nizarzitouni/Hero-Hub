import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    required this.text,
    super.key,
    this.size = 30,
    this.color = Colors.black,
  });

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
