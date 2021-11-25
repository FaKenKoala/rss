// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enclosure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Enclosure _$EnclosureFromJson(Map<String, dynamic> json) {
  return _RssEnclosure.fromJson(json);
}

/// @nodoc
class _$EnclosureTearOff {
  const _$EnclosureTearOff();

  _RssEnclosure call(
      {required String url, required int length, required String type}) {
    return _RssEnclosure(
      url: url,
      length: length,
      type: type,
    );
  }

  Enclosure fromJson(Map<String, Object?> json) {
    return Enclosure.fromJson(json);
  }
}

/// @nodoc
const $Enclosure = _$EnclosureTearOff();

/// @nodoc
mixin _$Enclosure {
  String get url => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnclosureCopyWith<Enclosure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnclosureCopyWith<$Res> {
  factory $EnclosureCopyWith(Enclosure value, $Res Function(Enclosure) then) =
      _$EnclosureCopyWithImpl<$Res>;
  $Res call({String url, int length, String type});
}

/// @nodoc
class _$EnclosureCopyWithImpl<$Res> implements $EnclosureCopyWith<$Res> {
  _$EnclosureCopyWithImpl(this._value, this._then);

  final Enclosure _value;
  // ignore: unused_field
  final $Res Function(Enclosure) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? length = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RssEnclosureCopyWith<$Res>
    implements $EnclosureCopyWith<$Res> {
  factory _$RssEnclosureCopyWith(
          _RssEnclosure value, $Res Function(_RssEnclosure) then) =
      __$RssEnclosureCopyWithImpl<$Res>;
  @override
  $Res call({String url, int length, String type});
}

/// @nodoc
class __$RssEnclosureCopyWithImpl<$Res> extends _$EnclosureCopyWithImpl<$Res>
    implements _$RssEnclosureCopyWith<$Res> {
  __$RssEnclosureCopyWithImpl(
      _RssEnclosure _value, $Res Function(_RssEnclosure) _then)
      : super(_value, (v) => _then(v as _RssEnclosure));

  @override
  _RssEnclosure get _value => super._value as _RssEnclosure;

  @override
  $Res call({
    Object? url = freezed,
    Object? length = freezed,
    Object? type = freezed,
  }) {
    return _then(_RssEnclosure(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssEnclosure implements _RssEnclosure {
  _$_RssEnclosure(
      {required this.url, required this.length, required this.type});

  factory _$_RssEnclosure.fromJson(Map<String, dynamic> json) =>
      _$$_RssEnclosureFromJson(json);

  @override
  final String url;
  @override
  final int length;
  @override
  final String type;

  @override
  String toString() {
    return 'Enclosure(url: $url, length: $length, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssEnclosure &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, length, type);

  @JsonKey(ignore: true)
  @override
  _$RssEnclosureCopyWith<_RssEnclosure> get copyWith =>
      __$RssEnclosureCopyWithImpl<_RssEnclosure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssEnclosureToJson(this);
  }
}

abstract class _RssEnclosure implements Enclosure {
  factory _RssEnclosure(
      {required String url,
      required int length,
      required String type}) = _$_RssEnclosure;

  factory _RssEnclosure.fromJson(Map<String, dynamic> json) =
      _$_RssEnclosure.fromJson;

  @override
  String get url;
  @override
  int get length;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$RssEnclosureCopyWith<_RssEnclosure> get copyWith =>
      throw _privateConstructorUsedError;
}
