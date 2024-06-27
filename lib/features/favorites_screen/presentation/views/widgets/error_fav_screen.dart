import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorFavScreen extends StatelessWidget {
  final String message;

  const ErrorFavScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 80, color: Colors.red[400]),
          const SizedBox(height: 16),
          Text(
            'Error: $message',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.red[600]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
