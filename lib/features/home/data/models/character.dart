import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    required int id,
    required String name,
    required String description,
    required String modified,
    required CharacterThumbnail thumbnail,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}

@freezed
class CharacterThumbnail with _$CharacterThumbnail {
  factory CharacterThumbnail({
    required String path,
    required String extension,
  }) = _CharacterThumbnail;

  factory CharacterThumbnail.fromJson(Map<String, dynamic> json) => _$CharacterThumbnailFromJson(json);
}
