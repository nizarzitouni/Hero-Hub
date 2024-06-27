import 'package:flutter/material.dart';

class EmptyFavoritesWidget extends StatelessWidget {
  const EmptyFavoritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'No favorites added yet.',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
