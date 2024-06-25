import 'package:flutter/material.dart';

import '../theme/app_pallete.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.transparent,
      body: Container(
        color: Colors.white.withOpacity(.4),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff1a1a1a).withOpacity(.6),
              borderRadius: BorderRadius.circular(16),
            ),
            width: 140,
            height: 140,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.yellow,
                ),
                SizedBox(height: 30),
                Text(
                  'Loading...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
