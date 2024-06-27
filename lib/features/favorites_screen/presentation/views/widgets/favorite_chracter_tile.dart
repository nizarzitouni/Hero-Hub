import 'package:flutter/material.dart';
import 'package:hero_hub/core/extensions/context_extension.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../home/data/models/character.dart';

class FavoriteCharacterTile extends StatelessWidget {
  final Character character;

  const FavoriteCharacterTile({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              '${character.thumbnail.path}.${character.thumbnail.extension}',
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            character.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: Text(
            character.description,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () {
            // Navigate to character details
            context.pushName(Routes.kCharacterDetailsView, arguments: character);
          },
        ),
        const Divider(height: 1),
      ],
    );
  }
}
