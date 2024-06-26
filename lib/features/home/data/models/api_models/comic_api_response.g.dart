// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicApiResponseImpl _$$ComicApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ComicApiResponseImpl(
      code: (json['code'] as num).toInt(),
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      attributionText: json['attributionText'] as String,
      attributionHTML: json['attributionHTML'] as String,
      etag: json['etag'] as String,
      data: ComicData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ComicApiResponseImplToJson(
        _$ComicApiResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHTML,
      'etag': instance.etag,
      'data': instance.data,
    };

_$ComicDataImpl _$$ComicDataImplFromJson(Map<String, dynamic> json) =>
    _$ComicDataImpl(
      offset: (json['offset'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComicDataImplToJson(_$ComicDataImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results,
    };
