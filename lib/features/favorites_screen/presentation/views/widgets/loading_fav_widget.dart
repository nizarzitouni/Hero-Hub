import 'package:flutter/material.dart';

class LoadingFavWidget extends StatelessWidget {
  const LoadingFavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
