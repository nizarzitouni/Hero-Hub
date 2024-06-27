// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_models/character_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterApiResponse _$MarvelApiResponseFromJson(Map<String, dynamic> json) {
  return _MarvelApiResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterApiResponse {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  MarvelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelApiResponseCopyWith<CharacterApiResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelApiResponseCopyWith<$Res> {
  factory $MarvelApiResponseCopyWith(CharacterApiResponse value, $Res Function(CharacterApiResponse) then) =
      _$MarvelApiResponseCopyWithImpl<$Res, CharacterApiResponse>;
  @useResult
  $Res call({int code, String status, MarvelData data});

  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MarvelApiResponseCopyWithImpl<$Res, $Val extends CharacterApiResponse> implements $MarvelApiResponseCopyWith<$Res> {
  _$MarvelApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
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
abstract class _$$MarvelApiResponseImplCopyWith<$Res> implements $MarvelApiResponseCopyWith<$Res> {
  factory _$$MarvelApiResponseImplCopyWith(_$MarvelApiResponseImpl value, $Res Function(_$MarvelApiResponseImpl) then) =
      __$$MarvelApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, MarvelData data});

  @override
  $MarvelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MarvelApiResponseImplCopyWithImpl<$Res> extends _$MarvelApiResponseCopyWithImpl<$Res, _$MarvelApiResponseImpl>
    implements _$$MarvelApiResponseImplCopyWith<$Res> {
  __$$MarvelApiResponseImplCopyWithImpl(_$MarvelApiResponseImpl _value, $Res Function(_$MarvelApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$MarvelApiResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$MarvelApiResponseImpl implements _MarvelApiResponse {
  _$MarvelApiResponseImpl({required this.code, required this.status, required this.data});

  factory _$MarvelApiResponseImpl.fromJson(Map<String, dynamic> json) => _$$MarvelApiResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String status;
  @override
  final MarvelData data;

  @override
  String toString() {
    return 'MarvelApiResponse(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelApiResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarvelApiResponseImplCopyWith<_$MarvelApiResponseImpl> get copyWith =>
      __$$MarvelApiResponseImplCopyWithImpl<_$MarvelApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarvelApiResponseImplToJson(
      this,
    );
  }
}

abstract class _MarvelApiResponse implements CharacterApiResponse {
  factory _MarvelApiResponse({required final int code, required final String status, required final MarvelData data}) =
      _$MarvelApiResponseImpl;

  factory _MarvelApiResponse.fromJson(Map<String, dynamic> json) = _$MarvelApiResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  MarvelData get data;
  @override
  @JsonKey(ignore: true)
  _$$MarvelApiResponseImplCopyWith<_$MarvelApiResponseImpl> get copyWith => throw _privateConstructorUsedError;
}
