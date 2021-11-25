import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  factory Image({
    required String url,
    required String title,
    required String link,
    @Default(88) int? width,
    @Default(31) int? height,
    String? description,
  }) = _RssImage;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
