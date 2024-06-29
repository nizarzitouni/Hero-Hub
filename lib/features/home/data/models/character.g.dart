// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      modified: json['modified'] as String,
      thumbnail: CharacterThumbnail.fromJson(
          json['thumbnail'] as Map<String, dynamic>),
      resourceURI: json['resourceURI'] as String,
      comics: ComicList.fromJson(json['comics'] as Map<String, dynamic>),
      urls: (json['urls'] as List<dynamic>)
          .map((e) => CharacterUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'thumbnail': instance.thumbnail,
      'resourceURI': instance.resourceURI,
      'comics': instance.comics,
      'urls': instance.urls,
    };

_$CharacterThumbnailImpl _$$CharacterThumbnailImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterThumbnailImpl(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$$CharacterThumbnailImplToJson(
        _$CharacterThumbnailImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };

_$ComicListImpl _$$ComicListImplFromJson(Map<String, dynamic> json) =>
    _$ComicListImpl(
      available: (json['available'] as num).toInt(),
      collectionURI: json['collectionURI'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ComicSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: (json['returned'] as num).toInt(),
    );

Map<String, dynamic> _$$ComicListImplToJson(_$ComicListImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items,
      'returned': instance.returned,
    };

_$ComicSummaryImpl _$$ComicSummaryImplFromJson(Map<String, dynamic> json) =>
    _$ComicSummaryImpl(
      resourceURI: json['resourceURI'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ComicSummaryImplToJson(_$ComicSummaryImpl instance) =>
    <String, dynamic>{
      'resourceURI': instance.resourceURI,
      'name': instance.name,
    };

_$CharacterUrlImpl _$$CharacterUrlImplFromJson(Map<String, dynamic> json) =>
    _$CharacterUrlImpl(
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$CharacterUrlImplToJson(_$CharacterUrlImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
    };
