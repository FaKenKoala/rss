// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _RssCategory.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

  _RssCategory call({required String value, String? domain}) {
    return _RssCategory(
      value: value,
      domain: domain,
    );
  }

  Category fromJson(Map<String, Object?> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String get value => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({String value, String? domain});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? domain = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RssCategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$RssCategoryCopyWith(
          _RssCategory value, $Res Function(_RssCategory) then) =
      __$RssCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String value, String? domain});
}

/// @nodoc
class __$RssCategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$RssCategoryCopyWith<$Res> {
  __$RssCategoryCopyWithImpl(
      _RssCategory _value, $Res Function(_RssCategory) _then)
      : super(_value, (v) => _then(v as _RssCategory));

  @override
  _RssCategory get _value => super._value as _RssCategory;

  @override
  $Res call({
    Object? value = freezed,
    Object? domain = freezed,
  }) {
    return _then(_RssCategory(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      domain: domain == freezed
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RssCategory implements _RssCategory {
  _$_RssCategory({required this.value, this.domain});

  factory _$_RssCategory.fromJson(Map<String, dynamic> json) =>
      _$$_RssCategoryFromJson(json);

  @override
  final String value;
  @override
  final String? domain;

  @override
  String toString() {
    return 'Category(value: $value, domain: $domain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RssCategory &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, domain);

  @JsonKey(ignore: true)
  @override
  _$RssCategoryCopyWith<_RssCategory> get copyWith =>
      __$RssCategoryCopyWithImpl<_RssCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RssCategoryToJson(this);
  }
}

abstract class _RssCategory implements Category {
  factory _RssCategory({required String value, String? domain}) =
      _$_RssCategory;

  factory _RssCategory.fromJson(Map<String, dynamic> json) =
      _$_RssCategory.fromJson;

  @override
  String get value;
  @override
  String? get domain;
  @override
  @JsonKey(ignore: true)
  _$RssCategoryCopyWith<_RssCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
