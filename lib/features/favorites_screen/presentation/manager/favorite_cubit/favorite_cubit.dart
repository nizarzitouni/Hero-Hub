import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hero_hub/core/services/cache_helper.dart';

import '../../../../../core/services/service_locator.dart';
import '../../../../home/data/models/character.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final CacheHelper cacheHelper;

  FavoritesCubit(this.cacheHelper) : super(const FavoritesState.initial()) {
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    emit(const FavoritesState.loading());
    try {
      final jsonString = cacheHelper.getData(key: CacheKeys.favoriteKeyPrefix) as String?;

      if (jsonString != null) {
        final List<dynamic> decodedList = jsonDecode(jsonString);
        final favorites = decodedList.map((json) => Character.fromJson(json)).toList();
        emit(FavoritesState.loaded(List<Character>.from(favorites)));
      } else {
        emit(const FavoritesState.loaded([]));
      }
    } catch (e) {
      emit(FavoritesState.error(e.toString()));
    }
  }

  Future<void> manageFavorites(Character character) async {
    try {
      final currentState = state;

      if (currentState is Loaded) {
        final currentFavorites = List<Character>.from(currentState.favorites); // Ensure it's mutable
        final index = currentFavorites.indexWhere((c) => c.id == character.id);

        if (index >= 0) {
          // Remove the character if it is already in the favorites
          currentFavorites.removeAt(index);
        } else {
          // Add the character if it is not in the favorites
          currentFavorites.add(character);
        }

        // Save the updated list as a JSON string
        final jsonString = jsonEncode(currentFavorites.map((c) => c.toJson()).toList());
        await cacheHelper.saveData(key: CacheKeys.favoriteKeyPrefix, value: jsonString);

        // Emit the new state with the updated favorites list
        emit(FavoritesState.loaded(currentFavorites));
      }
    } catch (e) {
      emit(FavoritesState.error(e.toString()));
    }
  }

  bool isFavorite(int characterId) {
    final currentState = state;
    if (currentState is Loaded) {
      return currentState.favorites.any((character) => character.id == characterId);
    }
    return false;
  }

  Future<void> deleteAllSavedFavorites() async {
    await cacheHelper.removeData(key: CacheKeys.favoriteKeyPrefix);
    emit(const FavoritesState.loaded([]));
    talker.debug('All Favorites Deleted');
  }
}
