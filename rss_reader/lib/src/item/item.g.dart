// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RssItem _$$_RssItemFromJson(Map<String, dynamic> json) => _$_RssItem(
      title: json['title'] as String?,
      link: json['link'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: json['comments'] as String?,
      enclosure: json['enclosure'] == null
          ? null
          : Enclosure.fromJson(json['enclosure'] as Map<String, dynamic>),
      guid: json['guid'] == null
          ? null
          : Guid.fromJson(json['guid'] as Map<String, dynamic>),
      pubDate: json['pubDate'] as String?,
      source: json['source'] == null
          ? null
          : ItemSource.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RssItemToJson(_$_RssItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'author': instance.author,
      'category': instance.category,
      'comments': instance.comments,
      'enclosure': instance.enclosure,
      'guid': instance.guid,
      'pubDate': instance.pubDate,
      'source': instance.source,
    };
