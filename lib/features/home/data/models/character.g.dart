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
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'thumbnail': instance.thumbnail,
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
