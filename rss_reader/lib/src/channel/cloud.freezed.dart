// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cloud.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cloud _$CloudFromJson(Map<String, dynamic> json) {
  return _RssCloud.fromJson(json);
}

/// @nodoc
class _$CloudTearOff {
  const _$CloudTearOff();

  _RssCloud call(
      {required String domain,
      required int port,
      required String path,
      required String registerProcedure,
      required String protocol}) {
    return _RssCloud(
      domain: domain,
      port: port,
      path: path,
      registerProcedure: registerProcedure,
      protocol: protocol,
    );
  }

  Cloud fromJson(Map<String, Object?> json) {
    return Cloud.fromJson(json);
  }
}

/// @nodoc
const $Cloud = _$CloudTearOff();

/// @nodoc
mixin _$Cloud {
  String get domain => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get registerProcedure => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudCopyWith<Cloud> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudCopyWith<$Res> {
  factory $CloudCopyWith(Cloud value, $Res Function(Cloud) then) =
      _$CloudCopyWithImpl<$Res>;
  $Res call(
      {String domain,
      int port,
      String path,
      String registerProcedure,
      String protocol});
}

/// @nodoc
class _$CloudCopyWithImpl<$Res> implements $CloudCopyWith<$Res> {
  _$CloudCopyWithImpl(this._value, this._then);

  final Cloud _value;
  // ignore: unused_field
  final $Res Function(Cloud) _then;

  @override
  $Res call({
    Object? domain = freezed,
    Object? port = freezed,
    Object? path = freezed,
    Object? registerProcedure = freezed,
    Object? protocol = freezed,
  }) {
    return _then(_value.copyWith(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      registerProcedure: registerProcedure == freezed
          ? _value.registerProcedure
          : registerProcedure // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: protocol == freezed
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RssCloudCopyWith<$Res> implements $CloudCopyWith<$Res> {
  factory _$RssCloudCopyWith(_RssCloud value, $Res Function(_RssCloud) then) =
      __$RssCloudCopyWithImpl<$Res>;
  @override
  $Res call(
      {String domain,
      int port,
      String path,
      String registerProcedure,
      String protocol});
}

/// @nodoc
class __$RssCloudCopyWithImpl<$Res> extends _$CloudCopyWithImpl<$Res>
    implements _$RssCloudCopyWith<$Res> {
  __$RssCloudCopyWithImpl(_RssCloud _value, $Res Function(_RssCloud) _then)
      : super(_value, (v) => _then(v as _RssCloud));

  @override
  _RssCloud get _value => super._value as _RssCloud;

  @override
  $Res call({
    Object? domain = freezed,
    Object? port = freezed,
    Object? path = freezed,
    Object? registerProcedure = freezed,
    Object? protocol = freezed,
  }) {
    return _then(_RssCloud(
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      registerProcedure: registerProcedure == freezed
          ? _value.registerProcedure
          : registerProcedure // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: protocol == freezed
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssCloud implements _RssCloud {
  _$_RssCloud(
      {required this.domain,
      required this.port,
      required this.path,
      required this.registerProcedure,
      required this.protocol});

  factory _$_RssCloud.fromJson(Map<String, dynamic> json) =>
      _$$_RssCloudFromJson(json);

  @override
  final String domain;
  @override
  final int port;
  @override
  final String path;
  @override
  final String registerProcedure;
  @override
  final String protocol;

  @override
  String toString() {
    return 'Cloud(domain: $domain, port: $port, path: $path, registerProcedure: $registerProcedure, protocol: $protocol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssCloud &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.registerProcedure, registerProcedure) ||
                other.registerProcedure == registerProcedure) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, domain, port, path, registerProcedure, protocol);

  @JsonKey(ignore: true)
  @override
  _$RssCloudCopyWith<_RssCloud> get copyWith =>
      __$RssCloudCopyWithImpl<_RssCloud>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssCloudToJson(this);
  }
}

abstract class _RssCloud implements Cloud {
  factory _RssCloud(
      {required String domain,
      required int port,
      required String path,
      required String registerProcedure,
      required String protocol}) = _$_RssCloud;

  factory _RssCloud.fromJson(Map<String, dynamic> json) = _$_RssCloud.fromJson;

  @override
  String get domain;
  @override
  int get port;
  @override
  String get path;
  @override
  String get registerProcedure;
  @override
  String get protocol;
  @override
  @JsonKey(ignore: true)
  _$RssCloudCopyWith<_RssCloud> get copyWith =>
      throw _privateConstructorUsedError;
}
