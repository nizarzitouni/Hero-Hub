import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hero_hub/features/home/data/models/character.dart';
import 'package:hero_hub/features/home/data/repos/marvel_repo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final MarvelRepo marvelRepository;

  HomeCubit(this.marvelRepository) : super(const HomeState.initial());

  Future<void> fetchCharacters() async {
    try {
      emit(const HomeState.loading());
      final result = await marvelRepository.getCharacters();
      result.fold(
        (failure) => emit(HomeState.failure(errorMsg: failure.errMessage)),
        (charactersList) => emit(HomeState.loaded(characters: charactersList)),
      );
    } catch (e) {
      emit(HomeState.failure(errorMsg: e.toString()));
    }
  }
}
