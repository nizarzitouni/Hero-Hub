// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterApiResponse _$CharacterApiResponseFromJson(Map<String, dynamic> json) {
  return _CharacterApiResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterApiResponse {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get copyright => throw _privateConstructorUsedError;
  String get attributionText => throw _privateConstructorUsedError;
  String get attributionHTML => throw _privateConstructorUsedError;
  MarvelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterApiResponseCopyWith<CharacterApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterApiResponseCopyWith<$Res> {
  factory $CharacterApiResponseCopyWith(CharacterApiResponse value,
          $Res Function(CharacterApiResponse) then) =
      _$CharacterApiResponseCopyWithImpl<$Res, CharacterApiResponse>;
  @useResult
  $Res call(
      {int code,
      String status,
      String copyright,
      String attributionText,
      String attributionHTML,
      MarvelData data});

  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CharacterApiResponseCopyWithImpl<$Res,
        $Val extends CharacterApiResponse>
    implements $CharacterApiResponseCopyWith<$Res> {
  _$CharacterApiResponseCopyWithImpl(this._value, this._then);

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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarvelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarvelDataCopyWith<$Res> get data {
    return $MarvelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterApiResponseImplCopyWith<$Res>
    implements $CharacterApiResponseCopyWith<$Res> {
  factory _$$CharacterApiResponseImplCopyWith(_$CharacterApiResponseImpl value,
          $Res Function(_$CharacterApiResponseImpl) then) =
      __$$CharacterApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String status,
      String copyright,
      String attributionText,
      String attributionHTML,
      MarvelData data});

  @override
  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CharacterApiResponseImplCopyWithImpl<$Res>
    extends _$CharacterApiResponseCopyWithImpl<$Res, _$CharacterApiResponseImpl>
    implements _$$CharacterApiResponseImplCopyWith<$Res> {
  __$$CharacterApiResponseImplCopyWithImpl(_$CharacterApiResponseImpl _value,
      $Res Function(_$CharacterApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? copyright = null,
    Object? attributionText = null,
    Object? attributionHTML = null,
    Object? data = null,
  }) {
    return _then(_$CharacterApiResponseImpl(
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MarvelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterApiResponseImpl implements _CharacterApiResponse {
  _$CharacterApiResponseImpl(
      {required this.code,
      required this.status,
      required this.copyright,
      required this.attributionText,
      required this.attributionHTML,
      required this.data});

  factory _$CharacterApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterApiResponseImplFromJson(json);

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
  final MarvelData data;

  @override
  String toString() {
    return 'CharacterApiResponse(code: $code, status: $status, copyright: $copyright, attributionText: $attributionText, attributionHTML: $attributionHTML, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterApiResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.attributionText, attributionText) ||
                other.attributionText == attributionText) &&
            (identical(other.attributionHTML, attributionHTML) ||
                other.attributionHTML == attributionHTML) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, copyright,
      attributionText, attributionHTML, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterApiResponseImplCopyWith<_$CharacterApiResponseImpl>
      get copyWith =>
          __$$CharacterApiResponseImplCopyWithImpl<_$CharacterApiResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterApiResponseImplToJson(
      this,
    );
  }
}

abstract class _CharacterApiResponse implements CharacterApiResponse {
  factory _CharacterApiResponse(
      {required final int code,
      required final String status,
      required final String copyright,
      required final String attributionText,
      required final String attributionHTML,
      required final MarvelData data}) = _$CharacterApiResponseImpl;

  factory _CharacterApiResponse.fromJson(Map<String, dynamic> json) =
      _$CharacterApiResponseImpl.fromJson;

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
  MarvelData get data;
  @override
  @JsonKey(ignore: true)
  _$$CharacterApiResponseImplCopyWith<_$CharacterApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
