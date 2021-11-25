import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rss_reader/src/item/category.dart';
import 'package:rss_reader/src/item/guid.dart';
import 'package:rss_reader/src/item/item_source.dart';

import 'enclosure.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  @Assert('title != null || description != null',
      'either title or description cannot be null!')
  factory Item({
    String? title,
    String? link,
    String? description,
    String? author,
    List<Category>? category,
    String? comments,
    Enclosure? enclosure,
    Guid? guid,
    String? pubDate,
    ItemSource? source,
  }) = _RssItem;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
