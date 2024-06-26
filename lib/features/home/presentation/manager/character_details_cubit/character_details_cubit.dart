import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/comic.dart';
import '../../../data/repos/marvel_repo.dart';

part 'character_details_state.dart';
part 'character_details_cubit.freezed.dart';

class CharacterDetailsCubit extends Cubit<CharacterDetailsState> {
  final MarvelRepo marvelRepository;

  CharacterDetailsCubit(this.marvelRepository) : super(const CharacterDetailsState.initial());

  Future<void> loadCharacterComics(int characterId) async {
    emit(const CharacterDetailsState.loading());
    try {
      final result = await marvelRepository.getCharacterComics(characterId);
      result.fold(
        (failure) => emit(CharacterDetailsState.error(failure.errMessage)),
        (comics) => emit(CharacterDetailsState.loaded(comics)),
      );
    } catch (e) {
      emit(CharacterDetailsState.error(e.toString()));
    }
  }
}
