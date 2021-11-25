import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_source.freezed.dart';
part 'item_source.g.dart';

@freezed
class ItemSource with _$ItemSource {
  factory ItemSource({
    required String value,
    required String url,
  }) = _RssItemSource;

  factory ItemSource.fromJson(Map<String, dynamic> json) => _$ItemSourceFromJson(json);
}
