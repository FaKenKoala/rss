// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RSSChannel _$$_RSSChannelFromJson(Map<String, dynamic> json) =>
    _$_RSSChannel(
      title: json['title'] as String,
      link: json['link'] as String,
      description: json['description'] as String,
      language: json['language'] as String?,
      copyright: json['copyright'] as String?,
      managingEditor: json['managingEditor'] as String?,
      webMaster: json['webMaster'] as String?,
      pubDate: json['pubDate'] as String?,
      lastBuildDate: json['lastBuildDate'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      generator: json['generator'] as String?,
      docs: json['docs'] as String?,
      cloud: json['cloud'] == null
          ? null
          : Cloud.fromJson(json['cloud'] as Map<String, dynamic>),
      ttl: json['ttl'] as int?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      textInput: json['textInput'] as String?,
      skipHours: json['skipHours'] as String?,
      skipDays: json['skipDays'] as String?,
    );

Map<String, dynamic> _$$_RSSChannelToJson(_$_RSSChannel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'description': instance.description,
      'language': instance.language,
      'copyright': instance.copyright,
      'managingEditor': instance.managingEditor,
      'webMaster': instance.webMaster,
      'pubDate': instance.pubDate,
      'lastBuildDate': instance.lastBuildDate,
      'category': instance.category,
      'generator': instance.generator,
      'docs': instance.docs,
      'cloud': instance.cloud,
      'ttl': instance.ttl,
      'image': instance.image,
      'textInput': instance.textInput,
      'skipHours': instance.skipHours,
      'skipDays': instance.skipDays,
    };
