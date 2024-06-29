// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterApiResponseImpl _$$CharacterApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterApiResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      attributionText: json['attributionText'] as String,
      attributionHTML: json['attributionHTML'] as String,
      data: MarvelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CharacterApiResponseImplToJson(
        _$CharacterApiResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'data': instance.data,
    };
