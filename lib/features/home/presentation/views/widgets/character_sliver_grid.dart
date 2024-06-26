import 'package:flutter/material.dart';

import '../../../data/models/character.dart';
import 'character_card.dart'; // Import your CharacterCard widget

class CharacterSliverGrid extends StatelessWidget {
  final List<Character> characters;

  const CharacterSliverGrid({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final character = characters[index];
          return CharacterCard(character: character);
        },
        childCount: characters.length,
      ),
    );
  }
}
