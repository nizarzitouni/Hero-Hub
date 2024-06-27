import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/config/app_information.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/utility/launch_custom_url.dart';

class PrivacyText extends StatelessWidget {
  const PrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center, // Aligning text to center
      text: TextSpan(
        style: AppTextStyles.sm18Titles400.copyWith(fontSize: 13, height: 1.5),
        children: [
          const TextSpan(
            text: 'By continuing, you agree to\n',
          ),
          _buildClickableText(
            context,
            text: '${AppInformation.name} Terms of Service',
            onTap: () {
              launchCustomUrl(context, AppInformation.applicationTerms);
            },
          ),
          const TextSpan(
            text: '\nand ',
          ),
          _buildClickableText(
            context,
            text: 'Privacy Policy',
            onTap: () {
              launchCustomUrl(context, AppInformation.applicationPrivacy);
            },
          ),
        ],
      ),
    );
  }

  TextSpan _buildClickableText(BuildContext context, {required String text, required VoidCallback onTap}) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: AppPallete.white, // Setting white color for bold text
        fontWeight: FontWeight.bold,
        // decoration: TextDecoration.underline,
      ),
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }
}
