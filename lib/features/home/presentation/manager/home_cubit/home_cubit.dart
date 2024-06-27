import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/character.dart';
import '../../../data/repos/marvel_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final MarvelRepo marvelRepository;
  // ignore: prefer_final_fields
  int _currentOffset = 0;
  static const int _charactersPerPage = 10;

  HomeCubit(this.marvelRepository) : super(const HomeState.initial());

  Future<void> fetchCharacters() async {
    // Check the current state and decide whether to proceed with fetching
    if (state is Loaded) {
      final loadedState = state as Loaded;
      // If we're already loading or have reached the max, don't fetch more
      if (loadedState.isLoading || loadedState.hasReachedMax) return;
      // If we can load more, update the state to show we're loading
      emit(loadedState.copyWith(isLoading: true));
    } else if (state is! Loading) {
      // If we're not in a Loaded or Loading state, start with a clean Loading state
      emit(const HomeState.loading());
    }

    try {
      // Attempt to fetch characters from the repository
      final result = await marvelRepository.getCharacters(
        offset: _currentOffset,
        limit: _charactersPerPage,
      );

      result.fold(
        (failure) => emit(HomeState.failure(errorMsg: failure.errMessage)),
        (newCharacters) {
          _currentOffset += _charactersPerPage;
          // Check if we've reached the max (received fewer characters than requested)
          final hasReachedMax = newCharacters.length < _charactersPerPage;

          // Update the state based on whether we're adding to existing characters or creating a new list
          if (state is Loaded) {
            // If we're already in a Loaded state, add the new characters to the existing list
            final loadedState = state as Loaded;
            emit(loadedState.copyWith(
              characters: [...loadedState.characters, ...newCharacters], //old char list + the new one (of 10)
              isLoading: false,
              hasReachedMax: hasReachedMax,
            ));
          } else {
            // The First Time we fetching
            emit(
              HomeState.loaded(
                characters: newCharacters,
                isLoading: false,
                hasReachedMax: hasReachedMax,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(HomeState.failure(errorMsg: e.toString()));
    }
  }

  // Reset the state to initial, clearing all data and resetting the offset
  void resetState() {
    _currentOffset = 0;
    emit(const HomeState.initial());
  }
}
