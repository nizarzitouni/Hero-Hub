import 'package:flutter/material.dart';

import '../../../../../core/config/app_information.dart';
import '../../../../../core/theme/app_pallete.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 28.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppInformation.title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppPallete.primary,
                fontFamily: "Pacifico",
              ),
            )
          ],
        ),
        SizedBox(height: 32.0),
      ],
    );
  }
}
