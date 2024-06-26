// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_models/character_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelApiResponseImpl _$$MarvelApiResponseImplFromJson(Map<String, dynamic> json) => _$MarvelApiResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      data: MarvelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarvelApiResponseImplToJson(_$MarvelApiResponseImpl instance) => <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };
