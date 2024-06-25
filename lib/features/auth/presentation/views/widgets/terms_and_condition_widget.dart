import 'package:flutter/material.dart';

import '../../../../../core/theme/app_pallete.dart';
import 'custom_check_box.dart';

class TermsAndCondtionWidget extends StatelessWidget {
  const TermsAndCondtionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: 'I have agree to our ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppPallete.grey,
                )),
            TextSpan(
                text: 'Terms and Condition',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppPallete.grey,
                  decoration: TextDecoration.underline,
                ))
          ]),
        ),
      ],
    );
  }
}
