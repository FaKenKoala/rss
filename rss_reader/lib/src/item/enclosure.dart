import 'package:freezed_annotation/freezed_annotation.dart';

part 'enclosure.freezed.dart';
part 'enclosure.g.dart';

@freezed
class Enclosure with _$Enclosure {
  factory Enclosure({
    required String url,
    required int length,
    required String type,
  }) = _RssEnclosure;
  factory Enclosure.fromJson(Map<String, dynamic> json) =>
      _$EnclosureFromJson(json);
}
