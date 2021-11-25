// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guid _$GuidFromJson(Map<String, dynamic> json) {
  return _RssGuid.fromJson(json);
}

/// @nodoc
class _$GuidTearOff {
  const _$GuidTearOff();

  _RssGuid call({required String value, required bool isPermaLink}) {
    return _RssGuid(
      value: value,
      isPermaLink: isPermaLink,
    );
  }

  Guid fromJson(Map<String, Object?> json) {
    return Guid.fromJson(json);
  }
}

/// @nodoc
const $Guid = _$GuidTearOff();

/// @nodoc
mixin _$Guid {
  String get value => throw _privateConstructorUsedError;
  bool get isPermaLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidCopyWith<Guid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidCopyWith<$Res> {
  factory $GuidCopyWith(Guid value, $Res Function(Guid) then) =
      _$GuidCopyWithImpl<$Res>;
  $Res call({String value, bool isPermaLink});
}

/// @nodoc
class _$GuidCopyWithImpl<$Res> implements $GuidCopyWith<$Res> {
  _$GuidCopyWithImpl(this._value, this._then);

  final Guid _value;
  // ignore: unused_field
  final $Res Function(Guid) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? isPermaLink = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPermaLink: isPermaLink == freezed
          ? _value.isPermaLink
          : isPermaLink // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RssGuidCopyWith<$Res> implements $GuidCopyWith<$Res> {
  factory _$RssGuidCopyWith(_RssGuid value, $Res Function(_RssGuid) then) =
      __$RssGuidCopyWithImpl<$Res>;
  @override
  $Res call({String value, bool isPermaLink});
}

/// @nodoc
class __$RssGuidCopyWithImpl<$Res> extends _$GuidCopyWithImpl<$Res>
    implements _$RssGuidCopyWith<$Res> {
  __$RssGuidCopyWithImpl(_RssGuid _value, $Res Function(_RssGuid) _then)
      : super(_value, (v) => _then(v as _RssGuid));

  @override
  _RssGuid get _value => super._value as _RssGuid;

  @override
  $Res call({
    Object? value = freezed,
    Object? isPermaLink = freezed,
  }) {
    return _then(_RssGuid(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPermaLink: isPermaLink == freezed
          ? _value.isPermaLink
          : isPermaLink // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssGuid implements _RssGuid {
  _$_RssGuid({required this.value, required this.isPermaLink});

  factory _$_RssGuid.fromJson(Map<String, dynamic> json) =>
      _$$_RssGuidFromJson(json);

  @override
  final String value;
  @override
  final bool isPermaLink;

  @override
  String toString() {
    return 'Guid(value: $value, isPermaLink: $isPermaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssGuid &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPermaLink, isPermaLink) ||
                other.isPermaLink == isPermaLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, isPermaLink);

  @JsonKey(ignore: true)
  @override
  _$RssGuidCopyWith<_RssGuid> get copyWith =>
      __$RssGuidCopyWithImpl<_RssGuid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssGuidToJson(this);
  }
}

abstract class _RssGuid implements Guid {
  factory _RssGuid({required String value, required bool isPermaLink}) =
      _$_RssGuid;

  factory _RssGuid.fromJson(Map<String, dynamic> json) = _$_RssGuid.fromJson;

  @override
  String get value;
  @override
  bool get isPermaLink;
  @override
  @JsonKey(ignore: true)
  _$RssGuidCopyWith<_RssGuid> get copyWith =>
      throw _privateConstructorUsedError;
}
