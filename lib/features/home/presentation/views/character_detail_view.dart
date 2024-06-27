import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/core/theme/app_pallete.dart';
import 'package:hero_hub/core/utility/launch_custom_url.dart';
import 'package:hero_hub/core/utility/spacing.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../favorites_screen/presentation/manager/favorite_cubit/favorite_cubit.dart' as fav;
import '../../data/models/character.dart';
import '../manager/character_details_cubit/character_details_cubit.dart';
import 'widgets/character_detail_view_widgets/comic_horizontal_list.dart';

class CharacterDetailView extends StatelessWidget {
  final Character character;

  const CharacterDetailView({super.key, required this.character});

  void _toggleFavorite(BuildContext context) {
    context.read<fav.FavoritesCubit>().manageFavorites(character);
  }

  String? getWikiUrl() {
    return character.urls
        .firstWhere(
          (url) => url.type == 'wiki' || url.type == 'detail',
          orElse: () => CharacterUrl(type: '', url: ''),
        )
        .url;
  }

  _openWikiUrl(BuildContext context) {
    final wikiUrl = getWikiUrl();
    launchCustomUrl(context, wikiUrl, openExternally: true);
  }

  @override
  Widget build(BuildContext context) {
    final wikiUrl = getWikiUrl();
    final hasWikiUrl = wikiUrl != null && wikiUrl.isNotEmpty;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    color: Colors.black.withOpacity(0.1),
                    child: Text(
                      character.name,
                      style: AppTextStyles.big25TitlesBold.copyWith(color: AppPallete.white, fontSize: 20),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
              background: Hero(
                tag: 'character_${character.id}',
                child: Image.network(
                  '${character.thumbnail.path}.${character.thumbnail.extension}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            actions: [
              BlocBuilder<fav.FavoritesCubit, fav.FavoritesState>(
                builder: (context, state) {
                  final isFavorite = state is fav.Loaded && state.favorites.any((fav) => fav.id == character.id);
                  return IconButton(
                    icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: Colors.red),
                    onPressed: () => _toggleFavorite(context),
                  );
                },
              ),
              if (hasWikiUrl)
                IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () => _openWikiUrl(context),
                )
              else
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('No wiki URL available')),
                    );
                  },
                ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About', style: AppTextStyles.big22TitlesW600),
                  verticalSpace(8),
                  Text(
                    character.description.isNotEmpty ? character.description : 'No description available.',
                    style: AppTextStyles.bodyText,
                  ),
                  verticalSpace(16),
                  Text('ID: ${character.id}', style: AppTextStyles.captionText),
                  Text('Last Modified: ${character.modified}', style: AppTextStyles.captionText),
                  verticalSpace(24),
                  Text('Comics', style: AppTextStyles.subtitleText),
                  verticalSpace(8),
                  BlocBuilder<CharacterDetailsCubit, CharacterDetailsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox(),
                        loading: () => const Center(child: CircularProgressIndicator()),
                        loaded: (comics) => ComicHorizontalList(comics: comics),
                        error: (message) => Text('Error: $message', style: AppTextStyles.emphasizedText),
                      );
                    },
                  ),
                  verticalSpace(16),
                  // ElevatedButton.icon(
                  //   onPressed: () => _openWikiUrl(context),
                  //   icon: const Icon(Icons.open_in_new),
                  //   label: const Text('Open Wiki'),
                  // ),
                  // verticalSpace(24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
