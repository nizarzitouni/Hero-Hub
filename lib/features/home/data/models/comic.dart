import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  factory Comic({
    required int id,
    required String title,
    required Thumbnail thumbnail,
    String? description,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  factory Thumbnail({
    required String path,
    required String extension,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);
}
