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
  String get resourceURI => throw _privateConstructorUsedError;
  ComicList get comics => throw _privateConstructorUsedError;
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
      String resourceURI,
      ComicList comics,
      List<CharacterUrl> urls});

  $CharacterThumbnailCopyWith<$Res> get thumbnail;
  $ComicListCopyWith<$Res> get comics;
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
    Object? resourceURI = null,
    Object? comics = null,
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
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      comics: null == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as ComicList,
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

  @override
  @pragma('vm:prefer-inline')
  $ComicListCopyWith<$Res> get comics {
    return $ComicListCopyWith<$Res>(_value.comics, (value) {
      return _then(_value.copyWith(comics: value) as $Val);
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
      String resourceURI,
      ComicList comics,
      List<CharacterUrl> urls});

  @override
  $CharacterThumbnailCopyWith<$Res> get thumbnail;
  @override
  $ComicListCopyWith<$Res> get comics;
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
    Object? resourceURI = null,
    Object? comics = null,
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
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      comics: null == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as ComicList,
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
      required this.resourceURI,
      required this.comics,
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
  @override
  final String resourceURI;
  @override
  final ComicList comics;
  final List<CharacterUrl> _urls;
  @override
  List<CharacterUrl> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'Character(id: $id, name: $name, description: $description, modified: $modified, thumbnail: $thumbnail, resourceURI: $resourceURI, comics: $comics, urls: $urls)';
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
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.comics, comics) || other.comics == comics) &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      modified,
      thumbnail,
      resourceURI,
      comics,
      const DeepCollectionEquality().hash(_urls));

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
      required final String resourceURI,
      required final ComicList comics,
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
  String get resourceURI;
  @override
  ComicList get comics;
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

ComicList _$ComicListFromJson(Map<String, dynamic> json) {
  return _ComicList.fromJson(json);
}

/// @nodoc
mixin _$ComicList {
  int get available => throw _privateConstructorUsedError;
  String get collectionURI => throw _privateConstructorUsedError;
  List<ComicSummary> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicListCopyWith<ComicList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicListCopyWith<$Res> {
  factory $ComicListCopyWith(ComicList value, $Res Function(ComicList) then) =
      _$ComicListCopyWithImpl<$Res, ComicList>;
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      List<ComicSummary> items,
      int returned});
}

/// @nodoc
class _$ComicListCopyWithImpl<$Res, $Val extends ComicList>
    implements $ComicListCopyWith<$Res> {
  _$ComicListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionURI = null,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionURI: null == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicSummary>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicListImplCopyWith<$Res>
    implements $ComicListCopyWith<$Res> {
  factory _$$ComicListImplCopyWith(
          _$ComicListImpl value, $Res Function(_$ComicListImpl) then) =
      __$$ComicListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      List<ComicSummary> items,
      int returned});
}

/// @nodoc
class __$$ComicListImplCopyWithImpl<$Res>
    extends _$ComicListCopyWithImpl<$Res, _$ComicListImpl>
    implements _$$ComicListImplCopyWith<$Res> {
  __$$ComicListImplCopyWithImpl(
      _$ComicListImpl _value, $Res Function(_$ComicListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionURI = null,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$ComicListImpl(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionURI: null == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ComicSummary>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicListImpl implements _ComicList {
  _$ComicListImpl(
      {required this.available,
      required this.collectionURI,
      required final List<ComicSummary> items,
      required this.returned})
      : _items = items;

  factory _$ComicListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicListImplFromJson(json);

  @override
  final int available;
  @override
  final String collectionURI;
  final List<ComicSummary> _items;
  @override
  List<ComicSummary> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int returned;

  @override
  String toString() {
    return 'ComicList(available: $available, collectionURI: $collectionURI, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicListImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionURI, collectionURI) ||
                other.collectionURI == collectionURI) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionURI,
      const DeepCollectionEquality().hash(_items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicListImplCopyWith<_$ComicListImpl> get copyWith =>
      __$$ComicListImplCopyWithImpl<_$ComicListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicListImplToJson(
      this,
    );
  }
}

abstract class _ComicList implements ComicList {
  factory _ComicList(
      {required final int available,
      required final String collectionURI,
      required final List<ComicSummary> items,
      required final int returned}) = _$ComicListImpl;

  factory _ComicList.fromJson(Map<String, dynamic> json) =
      _$ComicListImpl.fromJson;

  @override
  int get available;
  @override
  String get collectionURI;
  @override
  List<ComicSummary> get items;
  @override
  int get returned;
  @override
  @JsonKey(ignore: true)
  _$$ComicListImplCopyWith<_$ComicListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicSummary _$ComicSummaryFromJson(Map<String, dynamic> json) {
  return _ComicSummary.fromJson(json);
}

/// @nodoc
mixin _$ComicSummary {
  String get resourceURI => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicSummaryCopyWith<ComicSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicSummaryCopyWith<$Res> {
  factory $ComicSummaryCopyWith(
          ComicSummary value, $Res Function(ComicSummary) then) =
      _$ComicSummaryCopyWithImpl<$Res, ComicSummary>;
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class _$ComicSummaryCopyWithImpl<$Res, $Val extends ComicSummary>
    implements $ComicSummaryCopyWith<$Res> {
  _$ComicSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComicSummaryImplCopyWith<$Res>
    implements $ComicSummaryCopyWith<$Res> {
  factory _$$ComicSummaryImplCopyWith(
          _$ComicSummaryImpl value, $Res Function(_$ComicSummaryImpl) then) =
      __$$ComicSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class __$$ComicSummaryImplCopyWithImpl<$Res>
    extends _$ComicSummaryCopyWithImpl<$Res, _$ComicSummaryImpl>
    implements _$$ComicSummaryImplCopyWith<$Res> {
  __$$ComicSummaryImplCopyWithImpl(
      _$ComicSummaryImpl _value, $Res Function(_$ComicSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_$ComicSummaryImpl(
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicSummaryImpl implements _ComicSummary {
  _$ComicSummaryImpl({required this.resourceURI, required this.name});

  factory _$ComicSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicSummaryImplFromJson(json);

  @override
  final String resourceURI;
  @override
  final String name;

  @override
  String toString() {
    return 'ComicSummary(resourceURI: $resourceURI, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicSummaryImpl &&
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceURI, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicSummaryImplCopyWith<_$ComicSummaryImpl> get copyWith =>
      __$$ComicSummaryImplCopyWithImpl<_$ComicSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicSummaryImplToJson(
      this,
    );
  }
}

abstract class _ComicSummary implements ComicSummary {
  factory _ComicSummary(
      {required final String resourceURI,
      required final String name}) = _$ComicSummaryImpl;

  factory _ComicSummary.fromJson(Map<String, dynamic> json) =
      _$ComicSummaryImpl.fromJson;

  @override
  String get resourceURI;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ComicSummaryImplCopyWith<_$ComicSummaryImpl> get copyWith =>
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
