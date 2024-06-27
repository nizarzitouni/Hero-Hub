// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarvelData _$MarvelDataFromJson(Map<String, dynamic> json) {
  return _MarvelData.fromJson(json);
}

/// @nodoc
mixin _$MarvelData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelDataCopyWith<MarvelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelDataCopyWith<$Res> {
  factory $MarvelDataCopyWith(
          MarvelData value, $Res Function(MarvelData) then) =
      _$MarvelDataCopyWithImpl<$Res, MarvelData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Character> results});
}

/// @nodoc
class _$MarvelDataCopyWithImpl<$Res, $Val extends MarvelData>
    implements $MarvelDataCopyWith<$Res> {
  _$MarvelDataCopyWithImpl(this._value, this._then);

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
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarvelDataImplCopyWith<$Res>
    implements $MarvelDataCopyWith<$Res> {
  factory _$$MarvelDataImplCopyWith(
          _$MarvelDataImpl value, $Res Function(_$MarvelDataImpl) then) =
      __$$MarvelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, List<Character> results});
}

/// @nodoc
class __$$MarvelDataImplCopyWithImpl<$Res>
    extends _$MarvelDataCopyWithImpl<$Res, _$MarvelDataImpl>
    implements _$$MarvelDataImplCopyWith<$Res> {
  __$$MarvelDataImplCopyWithImpl(
      _$MarvelDataImpl _value, $Res Function(_$MarvelDataImpl) _then)
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
    return _then(_$MarvelDataImpl(
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
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarvelDataImpl implements _MarvelData {
  _$MarvelDataImpl(
      {required this.offset,
      required this.limit,
      required this.total,
      required this.count,
      required final List<Character> results})
      : _results = results;

  factory _$MarvelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarvelDataImplFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  final List<Character> _results;
  @override
  List<Character> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MarvelData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelDataImpl &&
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
  _$$MarvelDataImplCopyWith<_$MarvelDataImpl> get copyWith =>
      __$$MarvelDataImplCopyWithImpl<_$MarvelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarvelDataImplToJson(
      this,
    );
  }
}

abstract class _MarvelData implements MarvelData {
  factory _MarvelData(
      {required final int offset,
      required final int limit,
      required final int total,
      required final int count,
      required final List<Character> results}) = _$MarvelDataImpl;

  factory _MarvelData.fromJson(Map<String, dynamic> json) =
      _$MarvelDataImpl.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$MarvelDataImplCopyWith<_$MarvelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
