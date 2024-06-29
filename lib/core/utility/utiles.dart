import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImgUtility {
  static Image imageFromBase64String({required String base64String, required double imageWidth, required double imageHeight}) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.fill,
      width: imageWidth,
      height: imageHeight,
    );
  }

  static Uint8List imageFromBase64StringToUint8List(String base64String) {
    return Uint8List.fromList(base64Decode(base64String));
  }

  static Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  static String base64String(Uint8List data) {
    return base64Encode(data);
  }
}

// void showSnackBar(BuildContext context, String content) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(content),
//     ),
//   );
// }

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

String getNameFromEmail(String email) {
  return email.split('@')[0];
}
