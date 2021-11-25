// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rss.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RSS _$RSSFromJson(Map<String, dynamic> json) {
  return _RSS.fromJson(json);
}

/// @nodoc
class _$RSSTearOff {
  const _$RSSTearOff();

  _RSS call({required Channel channel, required List<Item> items}) {
    return _RSS(
      channel: channel,
      items: items,
    );
  }

  RSS fromJson(Map<String, Object?> json) {
    return RSS.fromJson(json);
  }
}

/// @nodoc
const $RSS = _$RSSTearOff();

/// @nodoc
mixin _$RSS {
  Channel get channel => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RSSCopyWith<RSS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RSSCopyWith<$Res> {
  factory $RSSCopyWith(RSS value, $Res Function(RSS) then) =
      _$RSSCopyWithImpl<$Res>;
  $Res call({Channel channel, List<Item> items});

  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$RSSCopyWithImpl<$Res> implements $RSSCopyWith<$Res> {
  _$RSSCopyWithImpl(this._value, this._then);

  final RSS _value;
  // ignore: unused_field
  final $Res Function(RSS) _then;

  @override
  $Res call({
    Object? channel = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }

  @override
  $ChannelCopyWith<$Res> get channel {
    return $ChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }
}

/// @nodoc
abstract class _$RSSCopyWith<$Res> implements $RSSCopyWith<$Res> {
  factory _$RSSCopyWith(_RSS value, $Res Function(_RSS) then) =
      __$RSSCopyWithImpl<$Res>;
  @override
  $Res call({Channel channel, List<Item> items});

  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$RSSCopyWithImpl<$Res> extends _$RSSCopyWithImpl<$Res>
    implements _$RSSCopyWith<$Res> {
  __$RSSCopyWithImpl(_RSS _value, $Res Function(_RSS) _then)
      : super(_value, (v) => _then(v as _RSS));

  @override
  _RSS get _value => super._value as _RSS;

  @override
  $Res call({
    Object? channel = freezed,
    Object? items = freezed,
  }) {
    return _then(_RSS(
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RSS implements _RSS {
  _$_RSS({required this.channel, required this.items});

  factory _$_RSS.fromJson(Map<String, dynamic> json) => _$$_RSSFromJson(json);

  @override
  final Channel channel;
  @override
  final List<Item> items;

  @override
  String toString() {
    return 'RSS(channel: $channel, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RSS &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, channel, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$RSSCopyWith<_RSS> get copyWith =>
      __$RSSCopyWithImpl<_RSS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RSSToJson(this);
  }
}

abstract class _RSS implements RSS {
  factory _RSS({required Channel channel, required List<Item> items}) = _$_RSS;

  factory _RSS.fromJson(Map<String, dynamic> json) = _$_RSS.fromJson;

  @override
  Channel get channel;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$RSSCopyWith<_RSS> get copyWith => throw _privateConstructorUsedError;
}
