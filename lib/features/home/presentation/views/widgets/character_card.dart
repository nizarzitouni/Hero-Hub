import 'package:flutter/material.dart';
import 'package:hero_hub/core/extensions/context_extension.dart';

import '../../../../../core/routes/routes.dart';
import '../../../data/models/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.character});
  final Character character;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushName(Routes.kCharacterDetailsView, arguments: character),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.network(
                  '${character.thumbnail.path}.${character.thumbnail.extension}',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.error)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                character.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
