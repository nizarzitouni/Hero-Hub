import 'package:flutter/material.dart';

import '../theme/app_pallete.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Widget? icon;

  const CustomFilledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius = 8.0,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppPallete.success.withOpacity(.6),
        foregroundColor: textColor ?? Colors.white,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    if (width != null || height != null) {
      button = SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? borderColor;
  final Color? textColor;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Widget? icon;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor,
    this.textColor,
    this.backgroundColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius = 8.0,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor ?? AppPallete.danger.withOpacity(.6)),
        backgroundColor: backgroundColor ?? Colors.transparent,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              color: textColor ?? AppPallete.danger.withOpacity(.6),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    if (width != null || height != null) {
      button = SizedBox(
        width: width,
        height: height,
        child: button,
      );
    }

    return button;
  }
}
