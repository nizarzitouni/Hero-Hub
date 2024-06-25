import 'package:flutter/material.dart';

class AnimatedBarItem extends StatelessWidget {
  const AnimatedBarItem({
    required this.isSelected,
    super.key,
  });

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isSelected ? 20 : 0,
      decoration: BoxDecoration(color: const Color(0xff81b4ff), borderRadius: BorderRadius.circular(12)),
    );
  }
}
