import 'package:flutter/material.dart';

// void showSnackBar(BuildContext context, String text) {
//   ScaffoldMessenger.of(context)
//     ..hideCurrentSnackBar()
//     ..showSnackBar(
//       SnackBar(
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         content: Text(text),
//       ),
//     );
// }

void showSnackBaro({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    ),
  );
}

void showSnackBar({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.black54,
  Color textColor = Colors.white,
  double fontSize = 16.0,
  double borderRadius = 10.0,
  Duration duration = const Duration(seconds: 2),
}) {
  OverlayEntry entry;

  entry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 85,
      width: MediaQuery.of(context).size.width - 48,
      left: 24,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: backgroundColor,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
            ),
          ),
        ),
      ),
    ),
  );

  Overlay.of(context).insert(entry);

  Future.delayed(duration, () {
    entry.remove();
  });
}
