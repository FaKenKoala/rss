import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_input.freezed.dart';
part 'text_input.g.dart';

@freezed
class TextInput with _$TextInput {
  factory TextInput({
    required String title,
    required String description,
    required String name,
    required String link,
  }) = _TextInput;

  factory TextInput.fromJson(Map<String, dynamic> json) =>
      _$TextInputFromJson(json);
}
