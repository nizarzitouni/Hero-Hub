import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/core/theme/app_pallete.dart';
import 'package:hero_hub/core/utility/show_snackbar.dart';
import 'package:hero_hub/core/utility/utiles.dart';

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
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: [
                      const Text('DELETE ALL', style: TextStyle(fontSize: 22, color: AppPallete.secondary, letterSpacing: .01)),
                      IconButton(
                        onPressed: () {
                          final favorites = context.read<FavoritesCubit>().state;
                          context.read<FavoritesCubit>().deleteAllSavedFavorites();
                          if (favorites is Loaded && favorites.favorites.isNotEmpty) {
                            showSnackBar(context: context, message: 'All favorites benn deleted');
                          } else {
                            showSnackBar(context: context, message: 'No favorites to delete');
                          }
                        },
                        icon: const Icon(
                          Icons.delete_forever_outlined,
                          color: AppPallete.secondary,
                          size: 35,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<FavoritesCubit, FavoritesState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const LoadingFavWidget(),
                    loading: () => const LoadingFavWidget(),
                    loaded: (favorites) {
                      if (favorites.isEmpty) {
                        return const EmptyFavoritesWidget();
                      } else {
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          itemCount: favorites.length,
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
          ],
        ),
      ),
    );
  }
}
