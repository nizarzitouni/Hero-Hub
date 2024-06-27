import 'package:freezed_annotation/freezed_annotation.dart';
import '../comic.dart';

part 'comic_api_response.freezed.dart';
part 'comic_api_response.g.dart';

@freezed
class ComicApiResponse with _$ComicApiResponse {
  factory ComicApiResponse({
    required int code,
    required String status,
    required String copyright,
    required String attributionText,
    required String attributionHTML,
    required String etag,
    required ComicData data,
  }) = _ComicApiResponse;

  factory ComicApiResponse.fromJson(Map<String, dynamic> json) => _$ComicApiResponseFromJson(json);
}

@freezed
class ComicData with _$ComicData {
  factory ComicData({
    required int offset,
    required int limit,
    required int total,
    required int count,
    required List<Comic> results,
  }) = _ComicData;

  factory ComicData.fromJson(Map<String, dynamic> json) => _$ComicDataFromJson(json);
}
