import 'package:freezed_annotation/freezed_annotation.dart';
import '../marvel_data.dart';

// part '../marvel_api_response.freezed.dart';
// part '../marvel_api_response.g.dart';
part 'character_api_response.freezed.dart';
part 'character_api_response.g.dart';

@freezed
class CharacterApiResponse with _$CharacterApiResponse {
  factory CharacterApiResponse({
    required int code,
    required String status,
    required String copyright,
    required String attributionText,
    required String attributionHTML,
    required MarvelData data,
  }) = _CharacterApiResponse;

  factory CharacterApiResponse.fromJson(Map<String, dynamic> json) => _$CharacterApiResponseFromJson(json);
}
