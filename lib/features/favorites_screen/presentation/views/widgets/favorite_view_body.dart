import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/favorite_cubit/favorite_cubit.dart';
import 'empty_favorites_widget.dart';
import 'error_fav_screen.dart';
import 'favorite_chracter_tile.dart';
import 'loading_fav_widget.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FavoritesCubit>().loadFavorites();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoritesCubit, FavoritesState>(
          builder: (context, state) {
            return state.when(
              initial: () => const LoadingFavWidget(),
              loading: () => const LoadingFavWidget(),
              loaded: (favorites) {
                if (favorites.isEmpty) {
                  return const EmptyFavoritesWidget();
                } else {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemCount: favorites.length,
                    separatorBuilder: (context, index) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final character = favorites[index];
                      return FavoriteCharacterTile(character: character);
                    },
                  );
                }
              },
              error: (message) => ErrorFavScreen(message: message),
            );
          },
        ),
      ),
    );
  }
}
