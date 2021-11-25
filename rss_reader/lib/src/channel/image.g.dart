// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RssImage _$$_RssImageFromJson(Map<String, dynamic> json) => _$_RssImage(
      url: json['url'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      width: json['width'] as int? ?? 88,
      height: json['height'] as int? ?? 31,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_RssImageToJson(_$_RssImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'link': instance.link,
      'width': instance.width,
      'height': instance.height,
      'description': instance.description,
    };
