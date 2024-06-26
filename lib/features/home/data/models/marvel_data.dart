import 'package:freezed_annotation/freezed_annotation.dart';
import 'character.dart';

part 'marvel_data.freezed.dart';
part 'marvel_data.g.dart';

@freezed
class MarvelData with _$MarvelData {
  factory MarvelData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Character> results,
  }) = _MarvelData;

  factory MarvelData.fromJson(Map<String, dynamic> json) => _$MarvelDataFromJson(json);
}
