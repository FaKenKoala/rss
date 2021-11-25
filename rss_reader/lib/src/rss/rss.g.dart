// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RSS _$$_RSSFromJson(Map<String, dynamic> json) => _$_RSS(
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RSSToJson(_$_RSS instance) => <String, dynamic>{
      'channel': instance.channel,
      'items': instance.items,
    };
