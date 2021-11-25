// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _RssItem.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _RssItem call(
      {String? title,
      String? link,
      String? description,
      String? author,
      List<Category>? category,
      String? comments,
      Enclosure? enclosure,
      Guid? guid,
      String? pubDate,
      ItemSource? source}) {
    return _RssItem(
      title: title,
      link: link,
      description: description,
      author: author,
      category: category,
      comments: comments,
      enclosure: enclosure,
      guid: guid,
      pubDate: pubDate,
      source: source,
    );
  }

  Item fromJson(Map<String, Object?> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  List<Category>? get category => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  Enclosure? get enclosure => throw _privateConstructorUsedError;
  Guid? get guid => throw _privateConstructorUsedError;
  String? get pubDate => throw _privateConstructorUsedError;
  ItemSource? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? link,
      String? description,
      String? author,
      List<Category>? category,
      String? comments,
      Enclosure? enclosure,
      Guid? guid,
      String? pubDate,
      ItemSource? source});

  $EnclosureCopyWith<$Res>? get enclosure;
  $GuidCopyWith<$Res>? get guid;
  $ItemSourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? comments = freezed,
    Object? enclosure = freezed,
    Object? guid = freezed,
    Object? pubDate = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      enclosure: enclosure == freezed
          ? _value.enclosure
          : enclosure // ignore: cast_nullable_to_non_nullable
              as Enclosure?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as Guid?,
      pubDate: pubDate == freezed
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ItemSource?,
    ));
  }

  @override
  $EnclosureCopyWith<$Res>? get enclosure {
    if (_value.enclosure == null) {
      return null;
    }

    return $EnclosureCopyWith<$Res>(_value.enclosure!, (value) {
      return _then(_value.copyWith(enclosure: value));
    });
  }

  @override
  $GuidCopyWith<$Res>? get guid {
    if (_value.guid == null) {
      return null;
    }

    return $GuidCopyWith<$Res>(_value.guid!, (value) {
      return _then(_value.copyWith(guid: value));
    });
  }

  @override
  $ItemSourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $ItemSourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$RssItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$RssItemCopyWith(_RssItem value, $Res Function(_RssItem) then) =
      __$RssItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? link,
      String? description,
      String? author,
      List<Category>? category,
      String? comments,
      Enclosure? enclosure,
      Guid? guid,
      String? pubDate,
      ItemSource? source});

  @override
  $EnclosureCopyWith<$Res>? get enclosure;
  @override
  $GuidCopyWith<$Res>? get guid;
  @override
  $ItemSourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$RssItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$RssItemCopyWith<$Res> {
  __$RssItemCopyWithImpl(_RssItem _value, $Res Function(_RssItem) _then)
      : super(_value, (v) => _then(v as _RssItem));

  @override
  _RssItem get _value => super._value as _RssItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? comments = freezed,
    Object? enclosure = freezed,
    Object? guid = freezed,
    Object? pubDate = freezed,
    Object? source = freezed,
  }) {
    return _then(_RssItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      enclosure: enclosure == freezed
          ? _value.enclosure
          : enclosure // ignore: cast_nullable_to_non_nullable
              as Enclosure?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as Guid?,
      pubDate: pubDate == freezed
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ItemSource?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssItem implements _RssItem {
  _$_RssItem(
      {this.title,
      this.link,
      this.description,
      this.author,
      this.category,
      this.comments,
      this.enclosure,
      this.guid,
      this.pubDate,
      this.source})
      : assert(title != null || description != null,
            'either title or description cannot be null!');

  factory _$_RssItem.fromJson(Map<String, dynamic> json) =>
      _$$_RssItemFromJson(json);

  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final List<Category>? category;
  @override
  final String? comments;
  @override
  final Enclosure? enclosure;
  @override
  final Guid? guid;
  @override
  final String? pubDate;
  @override
  final ItemSource? source;

  @override
  String toString() {
    return 'Item(title: $title, link: $link, description: $description, author: $author, category: $category, comments: $comments, enclosure: $enclosure, guid: $guid, pubDate: $pubDate, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.enclosure, enclosure) ||
                other.enclosure == enclosure) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      link,
      description,
      author,
      const DeepCollectionEquality().hash(category),
      comments,
      enclosure,
      guid,
      pubDate,
      source);

  @JsonKey(ignore: true)
  @override
  _$RssItemCopyWith<_RssItem> get copyWith =>
      __$RssItemCopyWithImpl<_RssItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssItemToJson(this);
  }
}

abstract class _RssItem implements Item {
  factory _RssItem(
      {String? title,
      String? link,
      String? description,
      String? author,
      List<Category>? category,
      String? comments,
      Enclosure? enclosure,
      Guid? guid,
      String? pubDate,
      ItemSource? source}) = _$_RssItem;

  factory _RssItem.fromJson(Map<String, dynamic> json) = _$_RssItem.fromJson;

  @override
  String? get title;
  @override
  String? get link;
  @override
  String? get description;
  @override
  String? get author;
  @override
  List<Category>? get category;
  @override
  String? get comments;
  @override
  Enclosure? get enclosure;
  @override
  Guid? get guid;
  @override
  String? get pubDate;
  @override
  ItemSource? get source;
  @override
  @JsonKey(ignore: true)
  _$RssItemCopyWith<_RssItem> get copyWith =>
      throw _privateConstructorUsedError;
}
