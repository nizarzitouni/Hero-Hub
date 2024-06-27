// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  CharacterThumbnail get thumbnail => throw _privateConstructorUsedError;
  List<CharacterUrl> get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String modified,
      CharacterThumbnail thumbnail,
      List<CharacterUrl> urls});

  $CharacterThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? modified = null,
    Object? thumbnail = null,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CharacterThumbnail,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<CharacterUrl>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterThumbnailCopyWith<$Res> get thumbnail {
    return $CharacterThumbnailCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String modified,
      CharacterThumbnail thumbnail,
      List<CharacterUrl> urls});

  @override
  $CharacterThumbnailCopyWith<$Res> get thumbnail;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? modified = null,
    Object? thumbnail = null,
    Object? urls = null,
  }) {
    return _then(_$CharacterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as CharacterThumbnail,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<CharacterUrl>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  _$CharacterImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.modified,
      required this.thumbnail,
      required final List<CharacterUrl> urls})
      : _urls = urls;

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String modified;
  @override
  final CharacterThumbnail thumbnail;
  final List<CharacterUrl> _urls;
  @override
  List<CharacterUrl> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'Character(id: $id, name: $name, description: $description, modified: $modified, thumbnail: $thumbnail, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, modified,
      thumbnail, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  factory _Character(
      {required final int id,
      required final String name,
      required final String description,
      required final String modified,
      required final CharacterThumbnail thumbnail,
      required final List<CharacterUrl> urls}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get modified;
  @override
  CharacterThumbnail get thumbnail;
  @override
  List<CharacterUrl> get urls;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterThumbnail _$CharacterThumbnailFromJson(Map<String, dynamic> json) {
  return _CharacterThumbnail.fromJson(json);
}

/// @nodoc
mixin _$CharacterThumbnail {
  String get path => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterThumbnailCopyWith<CharacterThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterThumbnailCopyWith<$Res> {
  factory $CharacterThumbnailCopyWith(
          CharacterThumbnail value, $Res Function(CharacterThumbnail) then) =
      _$CharacterThumbnailCopyWithImpl<$Res, CharacterThumbnail>;
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class _$CharacterThumbnailCopyWithImpl<$Res, $Val extends CharacterThumbnail>
    implements $CharacterThumbnailCopyWith<$Res> {
  _$CharacterThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterThumbnailImplCopyWith<$Res>
    implements $CharacterThumbnailCopyWith<$Res> {
  factory _$$CharacterThumbnailImplCopyWith(_$CharacterThumbnailImpl value,
          $Res Function(_$CharacterThumbnailImpl) then) =
      __$$CharacterThumbnailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String extension});
}

/// @nodoc
class __$$CharacterThumbnailImplCopyWithImpl<$Res>
    extends _$CharacterThumbnailCopyWithImpl<$Res, _$CharacterThumbnailImpl>
    implements _$$CharacterThumbnailImplCopyWith<$Res> {
  __$$CharacterThumbnailImplCopyWithImpl(_$CharacterThumbnailImpl _value,
      $Res Function(_$CharacterThumbnailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? extension = null,
  }) {
    return _then(_$CharacterThumbnailImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterThumbnailImpl implements _CharacterThumbnail {
  _$CharacterThumbnailImpl({required this.path, required this.extension});

  factory _$CharacterThumbnailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterThumbnailImplFromJson(json);

  @override
  final String path;
  @override
  final String extension;

  @override
  String toString() {
    return 'CharacterThumbnail(path: $path, extension: $extension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterThumbnailImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.extension, extension) ||
                other.extension == extension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, extension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterThumbnailImplCopyWith<_$CharacterThumbnailImpl> get copyWith =>
      __$$CharacterThumbnailImplCopyWithImpl<_$CharacterThumbnailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterThumbnailImplToJson(
      this,
    );
  }
}

abstract class _CharacterThumbnail implements CharacterThumbnail {
  factory _CharacterThumbnail(
      {required final String path,
      required final String extension}) = _$CharacterThumbnailImpl;

  factory _CharacterThumbnail.fromJson(Map<String, dynamic> json) =
      _$CharacterThumbnailImpl.fromJson;

  @override
  String get path;
  @override
  String get extension;
  @override
  @JsonKey(ignore: true)
  _$$CharacterThumbnailImplCopyWith<_$CharacterThumbnailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterUrl _$CharacterUrlFromJson(Map<String, dynamic> json) {
  return _CharacterUrl.fromJson(json);
}

/// @nodoc
mixin _$CharacterUrl {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterUrlCopyWith<CharacterUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterUrlCopyWith<$Res> {
  factory $CharacterUrlCopyWith(
          CharacterUrl value, $Res Function(CharacterUrl) then) =
      _$CharacterUrlCopyWithImpl<$Res, CharacterUrl>;
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class _$CharacterUrlCopyWithImpl<$Res, $Val extends CharacterUrl>
    implements $CharacterUrlCopyWith<$Res> {
  _$CharacterUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterUrlImplCopyWith<$Res>
    implements $CharacterUrlCopyWith<$Res> {
  factory _$$CharacterUrlImplCopyWith(
          _$CharacterUrlImpl value, $Res Function(_$CharacterUrlImpl) then) =
      __$$CharacterUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class __$$CharacterUrlImplCopyWithImpl<$Res>
    extends _$CharacterUrlCopyWithImpl<$Res, _$CharacterUrlImpl>
    implements _$$CharacterUrlImplCopyWith<$Res> {
  __$$CharacterUrlImplCopyWithImpl(
      _$CharacterUrlImpl _value, $Res Function(_$CharacterUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$CharacterUrlImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterUrlImpl implements _CharacterUrl {
  _$CharacterUrlImpl({required this.type, required this.url});

  factory _$CharacterUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterUrlImplFromJson(json);

  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterUrl(type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterUrlImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterUrlImplCopyWith<_$CharacterUrlImpl> get copyWith =>
      __$$CharacterUrlImplCopyWithImpl<_$CharacterUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterUrlImplToJson(
      this,
    );
  }
}

abstract class _CharacterUrl implements CharacterUrl {
  factory _CharacterUrl(
      {required final String type,
      required final String url}) = _$CharacterUrlImpl;

  factory _CharacterUrl.fromJson(Map<String, dynamic> json) =
      _$CharacterUrlImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterUrlImplCopyWith<_$CharacterUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
