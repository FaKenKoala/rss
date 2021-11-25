// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextInput _$TextInputFromJson(Map<String, dynamic> json) {
  return _TextInput.fromJson(json);
}

/// @nodoc
class _$TextInputTearOff {
  const _$TextInputTearOff();

  _TextInput call(
      {required String title,
      required String description,
      required String name,
      required String link}) {
    return _TextInput(
      title: title,
      description: description,
      name: name,
      link: link,
    );
  }

  TextInput fromJson(Map<String, Object?> json) {
    return TextInput.fromJson(json);
  }
}

/// @nodoc
const $TextInput = _$TextInputTearOff();

/// @nodoc
mixin _$TextInput {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextInputCopyWith<TextInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextInputCopyWith<$Res> {
  factory $TextInputCopyWith(TextInput value, $Res Function(TextInput) then) =
      _$TextInputCopyWithImpl<$Res>;
  $Res call({String title, String description, String name, String link});
}

/// @nodoc
class _$TextInputCopyWithImpl<$Res> implements $TextInputCopyWith<$Res> {
  _$TextInputCopyWithImpl(this._value, this._then);

  final TextInput _value;
  // ignore: unused_field
  final $Res Function(TextInput) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TextInputCopyWith<$Res> implements $TextInputCopyWith<$Res> {
  factory _$TextInputCopyWith(
          _TextInput value, $Res Function(_TextInput) then) =
      __$TextInputCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String name, String link});
}

/// @nodoc
class __$TextInputCopyWithImpl<$Res> extends _$TextInputCopyWithImpl<$Res>
    implements _$TextInputCopyWith<$Res> {
  __$TextInputCopyWithImpl(_TextInput _value, $Res Function(_TextInput) _then)
      : super(_value, (v) => _then(v as _TextInput));

  @override
  _TextInput get _value => super._value as _TextInput;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_TextInput(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextInput implements _TextInput {
  _$_TextInput(
      {required this.title,
      required this.description,
      required this.name,
      required this.link});

  factory _$_TextInput.fromJson(Map<String, dynamic> json) =>
      _$$_TextInputFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String name;
  @override
  final String link;

  @override
  String toString() {
    return 'TextInput(title: $title, description: $description, name: $name, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TextInput &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, name, link);

  @JsonKey(ignore: true)
  @override
  _$TextInputCopyWith<_TextInput> get copyWith =>
      __$TextInputCopyWithImpl<_TextInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextInputToJson(this);
  }
}

abstract class _TextInput implements TextInput {
  factory _TextInput(
      {required String title,
      required String description,
      required String name,
      required String link}) = _$_TextInput;

  factory _TextInput.fromJson(Map<String, dynamic> json) =
      _$_TextInput.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get name;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$TextInputCopyWith<_TextInput> get copyWith =>
      throw _privateConstructorUsedError;
}
