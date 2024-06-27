part of 'character_details_cubit.dart';

@freezed
class CharacterDetailsState with _$CharacterDetailsState {
  const factory CharacterDetailsState.initial() = _Initial;
  const factory CharacterDetailsState.loading() = Loading;
  const factory CharacterDetailsState.loaded(List<Comic> comics) = Loaded;
  const factory CharacterDetailsState.error(String message) = Failure;
}
