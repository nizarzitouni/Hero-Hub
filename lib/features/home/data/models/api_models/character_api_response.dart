import 'package:freezed_annotation/freezed_annotation.dart';
import '../marvel_data.dart';

part '../marvel_api_response.freezed.dart';
part '../marvel_api_response.g.dart';

@freezed
class CharacterApiResponse with _$CharacterApiResponse {
  factory CharacterApiResponse({
    required int code,
    required String status,
    required MarvelData data,
  }) = _MarvelApiResponse;

  factory CharacterApiResponse.fromJson(Map<String, dynamic> json) => _$MarvelApiResponseFromJson(json);
}
