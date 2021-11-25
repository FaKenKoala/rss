// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemSource _$ItemSourceFromJson(Map<String, dynamic> json) {
  return _RssItemSource.fromJson(json);
}

/// @nodoc
class _$ItemSourceTearOff {
  const _$ItemSourceTearOff();

  _RssItemSource call({required String value, required String url}) {
    return _RssItemSource(
      value: value,
      url: url,
    );
  }

  ItemSource fromJson(Map<String, Object?> json) {
    return ItemSource.fromJson(json);
  }
}

/// @nodoc
const $ItemSource = _$ItemSourceTearOff();

/// @nodoc
mixin _$ItemSource {
  String get value => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemSourceCopyWith<ItemSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemSourceCopyWith<$Res> {
  factory $ItemSourceCopyWith(
          ItemSource value, $Res Function(ItemSource) then) =
      _$ItemSourceCopyWithImpl<$Res>;
  $Res call({String value, String url});
}

/// @nodoc
class _$ItemSourceCopyWithImpl<$Res> implements $ItemSourceCopyWith<$Res> {
  _$ItemSourceCopyWithImpl(this._value, this._then);

  final ItemSource _value;
  // ignore: unused_field
  final $Res Function(ItemSource) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RssItemSourceCopyWith<$Res>
    implements $ItemSourceCopyWith<$Res> {
  factory _$RssItemSourceCopyWith(
          _RssItemSource value, $Res Function(_RssItemSource) then) =
      __$RssItemSourceCopyWithImpl<$Res>;
  @override
  $Res call({String value, String url});
}

/// @nodoc
class __$RssItemSourceCopyWithImpl<$Res> extends _$ItemSourceCopyWithImpl<$Res>
    implements _$RssItemSourceCopyWith<$Res> {
  __$RssItemSourceCopyWithImpl(
      _RssItemSource _value, $Res Function(_RssItemSource) _then)
      : super(_value, (v) => _then(v as _RssItemSource));

  @override
  _RssItemSource get _value => super._value as _RssItemSource;

  @override
  $Res call({
    Object? value = freezed,
    Object? url = freezed,
  }) {
    return _then(_RssItemSource(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssItemSource implements _RssItemSource {
  _$_RssItemSource({required this.value, required this.url});

  factory _$_RssItemSource.fromJson(Map<String, dynamic> json) =>
      _$$_RssItemSourceFromJson(json);

  @override
  final String value;
  @override
  final String url;

  @override
  String toString() {
    return 'ItemSource(value: $value, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssItemSource &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, url);

  @JsonKey(ignore: true)
  @override
  _$RssItemSourceCopyWith<_RssItemSource> get copyWith =>
      __$RssItemSourceCopyWithImpl<_RssItemSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssItemSourceToJson(this);
  }
}

abstract class _RssItemSource implements ItemSource {
  factory _RssItemSource({required String value, required String url}) =
      _$_RssItemSource;

  factory _RssItemSource.fromJson(Map<String, dynamic> json) =
      _$_RssItemSource.fromJson;

  @override
  String get value;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$RssItemSourceCopyWith<_RssItemSource> get copyWith =>
      throw _privateConstructorUsedError;
}
