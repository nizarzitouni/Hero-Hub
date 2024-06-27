import 'package:flutter/material.dart';

import '../../../../../../core/config/app_information.dart';
import '../../../../../../core/theme/app_pallete.dart';

class SlidingLogoText extends StatelessWidget {
  const SlidingLogoText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              AppInformation.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppPallete.primary,
                fontFamily: "Pacifico",
              ),
            ),
          );
        });
  }
}
