import 'package:freezed_annotation/freezed_annotation.dart';

import 'cloud.dart';
import 'image.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  factory Channel({
    required String title,
    required String link,
    required String description,
    String? language,
    String? copyright,
    String? managingEditor,
    String? webMaster,
    String? pubDate,
    String? lastBuildDate,
    List<String>? category,
    String? generator,
    String? docs,
    Cloud? cloud,
    int? ttl,
    Image? image,
    String? textInput,
    String? skipHours,
    String? skipDays,
  }) = _RSSChannel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
