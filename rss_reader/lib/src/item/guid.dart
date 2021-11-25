import 'package:freezed_annotation/freezed_annotation.dart';

part 'guid.freezed.dart';
part 'guid.g.dart';

@freezed
class Guid with _$Guid {
  factory Guid({
    required String value,
    required bool isPermaLink,
  }) = _RssGuid;
  factory Guid.fromJson(Map<String, dynamic> json) => _$GuidFromJson(json);
}
