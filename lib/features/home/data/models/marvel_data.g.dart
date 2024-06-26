// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marvel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelDataImpl _$$MarvelDataImplFromJson(Map<String, dynamic> json) =>
    _$MarvelDataImpl(
      offset: (json['offset'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MarvelDataImplToJson(_$MarvelDataImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
