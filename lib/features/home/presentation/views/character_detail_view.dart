import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(character.name, style: AppTextStyles.big25TitlesBold.copyWith(color: Colors.white)),
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
                    icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
                    onPressed: () => _toggleFavorite(context),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
