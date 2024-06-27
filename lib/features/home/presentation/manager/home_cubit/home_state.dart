part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({
    required List<Character> characters,
    required bool isLoading,
    required bool hasReachedMax,
  }) = Loaded;
  const factory HomeState.failure({required String errorMsg}) = Failure;
}
