import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rss_reader/src/channel/channel.dart';
import 'package:rss_reader/src/item/item.dart';

part 'rss.freezed.dart';
part 'rss.g.dart';

@freezed
class RSS with _$RSS {
  factory RSS({
    required Channel channel,
    required List<Item> items,
  }) = _RSS;

  factory RSS.fromJson(Map<String, dynamic> json) => _$RSSFromJson(json);
}
