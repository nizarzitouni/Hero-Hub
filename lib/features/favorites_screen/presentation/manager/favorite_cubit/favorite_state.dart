part of 'favorite_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = Loading;
  const factory FavoritesState.loaded(List<Character> favorites) = Loaded;
  const factory FavoritesState.error(String message) = Error;
}
