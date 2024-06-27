// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComicApiResponse _$ComicApiResponseFromJson(Map<String, dynamic> json) {
  return _ComicApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ComicApiResponse {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  String get attributionText => throw _privateConstructorUsedError;
  String get attributionHTML => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  ComicData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicApiResponseCopyWith<ComicApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicApiResponseCopyWith<$Res> {
  factory $ComicApiResponseCopyWith(
          ComicApiResponse value, $Res Function(ComicApiResponse) then) =
      _$ComicApiResponseCopyWithImpl<$Res, ComicApiResponse>;
  @useResult
  $Res call(
      {int code,
      String status,
      String copyright,
      String attributionText,
      String attributionHTML,
      String etag,
      ComicData data});

  $ComicDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ComicApiResponseCopyWithImpl<$Res, $Val extends ComicApiResponse>
    implements $ComicApiResponseCopyWith<$Res> {
  _$ComicApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? copyright = null,
    Object? attributionText = null,
    Object? attributionHTML = null,
    Object? etag = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      attributionText: null == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String,
      attributionHTML: null == attributionHTML
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicDataCopyWith<$Res> get data {
    return $ComicDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicApiResponseImplCopyWith<$Res>
    implements $ComicApiResponseCopyWith<$Res> {
  factory _$$ComicApiResponseImplCopyWith(_$ComicApiResponseImpl value,
          $Res Function(_$ComicApiResponseImpl) then) =
      __$$ComicApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String status,
      String copyright,
      String attributionText,
      String attributionHTML,
      String etag,
      ComicData data});

  @override
  $ComicDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ComicApiResponseImplCopyWithImpl<$Res>
    extends _$ComicApiResponseCopyWithImpl<$Res, _$ComicApiResponseImpl>
    implements _$$ComicApiResponseImplCopyWith<$Res> {
  __$$ComicApiResponseImplCopyWithImpl(_$ComicApiResponseImpl _value,
      $Res Function(_$ComicApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? copyright = null,
    Object? attributionText = null,
    Object? attributionHTML = null,
    Object? etag = null,
    Object? data = null,
  }) {
    return _then(_$ComicApiResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
      attributionText: null == attributionText
          ? _value.attributionText
          : attributionText // ignore: cast_nullable_to_non_nullable
              as String,
      attributionHTML: null == attributionHTML
          ? _value.attributionHTML
          : attributionHTML // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ComicData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicApiResponseImpl implements _ComicApiResponse {
  _$ComicApiResponseImpl(
      {required this.code,
      required this.status,
      required this.copyright,
      required this.attributionText,
      required this.attributionHTML,
      required this.etag,
      required this.data});

  factory _$ComicApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicApiResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final String copyright;
  @override
  final String attributionText;
  @override
  final String attributionHTML;
  @override
  final String etag;
  @override
  final ComicData data;

  @override
  String toString() {
    return 'ComicApiResponse(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHTML: $attributionHTML, etag: $etag, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicApiResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.attributionText, attributionText) ||
                other.attributionText == attributionText) &&
            (identical(other.attributionHTML, attributionHTML) ||
                other.attributionHTML == attributionHTML) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, copyright,
      attributionText, attributionHTML, etag, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicApiResponseImplCopyWith<_$ComicApiResponseImpl> get copyWith =>
      __$$ComicApiResponseImplCopyWithImpl<_$ComicApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ComicApiResponse implements ComicApiResponse {
  factory _ComicApiResponse(
      {required final int code,
      required final String status,
      required final String copyright,
      required final String attributionText,
      required final String attributionHTML,
      required final String etag,
      required final ComicData data}) = _$ComicApiResponseImpl;

  factory _ComicApiResponse.fromJson(Map<String, dynamic> json) =
      _$ComicApiResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  String get copyright;
  @override
  String get attributionText;
  @override
  String get attributionHTML;
  @override
  String get etag;
  @override
  ComicData get data;
  @override
  @JsonKey(ignore: true)
  _$$ComicApiResponseImplCopyWith<_$ComicApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicData _$ComicDataFromJson(Map<String, dynamic> json) {
  return _ComicData.fromJson(json);
}

/// @nodoc
mixin _$ComicData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Comic> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicDataCopyWith<ComicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDataCopyWith<$Res> {
  factory $ComicDataCopyWith(ComicData value, $Res Function(ComicData) then) =
      _$ComicDataCopyWithImpl<$Res, ComicData>;
  @useResult
  $Res call({int offset, int limit, int total, int count, List<Comic> results});
}

/// @nodoc
class _$ComicDataCopyWithImpl<$Res, $Val extends ComicData>
    implements $ComicDataCopyWith<$Res> {
  _$ComicDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicDataImplCopyWith<$Res>
    implements $ComicDataCopyWith<$Res> {
  factory _$$ComicDataImplCopyWith(
          _$ComicDataImpl value, $Res Function(_$ComicDataImpl) then) =
      __$$ComicDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit, int total, int count, List<Comic> results});
}

/// @nodoc
class __$$ComicDataImplCopyWithImpl<$Res>
    extends _$ComicDataCopyWithImpl<$Res, _$ComicDataImpl>
    implements _$$ComicDataImplCopyWith<$Res> {
  __$$ComicDataImplCopyWithImpl(
      _$ComicDataImpl _value, $Res Function(_$ComicDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$ComicDataImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicDataImpl implements _ComicData {
  _$ComicDataImpl(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Comic> results})
      : _results = results;

  factory _$ComicDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicDataImplFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Comic> _results;
  @override
  List<Comic> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ComicData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicDataImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicDataImplCopyWith<_$ComicDataImpl> get copyWith =>
      __$$ComicDataImplCopyWithImpl<_$ComicDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicDataImplToJson(
      this,
    );
  }
}

abstract class _ComicData implements ComicData {
  factory _ComicData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Comic> results}) = _$ComicDataImpl;

  factory _ComicData.fromJson(Map<String, dynamic> json) =
      _$ComicDataImpl.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Comic> get results;
  @override
  @JsonKey(ignore: true)
  _$$ComicDataImplCopyWith<_$ComicDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
