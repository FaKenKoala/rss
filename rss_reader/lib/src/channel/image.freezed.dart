// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _RssImage.fromJson(json);
}

/// @nodoc
class _$ImageTearOff {
  const _$ImageTearOff();

  _RssImage call(
      {required String url,
      required String title,
      required String link,
      int? width = 88,
      int? height = 31,
      String? description}) {
    return _RssImage(
      url: url,
      title: title,
      link: link,
      width: width,
      height: height,
      description: description,
    );
  }

  Image fromJson(Map<String, Object?> json) {
    return Image.fromJson(json);
  }
}

/// @nodoc
const $Image = _$ImageTearOff();

/// @nodoc
mixin _$Image {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String title,
      String link,
      int? width,
      int? height,
      String? description});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  final Image _value;
  // ignore: unused_field
  final $Res Function(Image) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RssImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$RssImageCopyWith(_RssImage value, $Res Function(_RssImage) then) =
      __$RssImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String title,
      String link,
      int? width,
      int? height,
      String? description});
}

/// @nodoc
class __$RssImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res>
    implements _$RssImageCopyWith<$Res> {
  __$RssImageCopyWithImpl(_RssImage _value, $Res Function(_RssImage) _then)
      : super(_value, (v) => _then(v as _RssImage));

  @override
  _RssImage get _value => super._value as _RssImage;

  @override
  $Res call({
    Object? url = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? description = freezed,
  }) {
    return _then(_RssImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssImage implements _RssImage {
  _$_RssImage(
      {required this.url,
      required this.title,
      required this.link,
      this.width = 88,
      this.height = 31,
      this.description});

  factory _$_RssImage.fromJson(Map<String, dynamic> json) =>
      _$$_RssImageFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  final String link;
  @JsonKey(defaultValue: 88)
  @override
  final int? width;
  @JsonKey(defaultValue: 31)
  @override
  final int? height;
  @override
  final String? description;

  @override
  String toString() {
    return 'Image(url: $url, title: $title, link: $link, width: $width, height: $height, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssImage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, url, title, link, width, height, description);

  @JsonKey(ignore: true)
  @override
  _$RssImageCopyWith<_RssImage> get copyWith =>
      __$RssImageCopyWithImpl<_RssImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssImageToJson(this);
  }
}

abstract class _RssImage implements Image {
  factory _RssImage(
      {required String url,
      required String title,
      required String link,
      int? width,
      int? height,
      String? description}) = _$_RssImage;

  factory _RssImage.fromJson(Map<String, dynamic> json) = _$_RssImage.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  String get link;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$RssImageCopyWith<_RssImage> get copyWith =>
      throw _privateConstructorUsedError;
}
