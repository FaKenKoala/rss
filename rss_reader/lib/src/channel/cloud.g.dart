// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RssCloud _$$_RssCloudFromJson(Map<String, dynamic> json) => _$_RssCloud(
      domain: json['domain'] as String,
      port: json['port'] as int,
      path: json['path'] as String,
      registerProcedure: json['registerProcedure'] as String,
      protocol: json['protocol'] as String,
    );

Map<String, dynamic> _$$_RssCloudToJson(_$_RssCloud instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'port': instance.port,
      'path': instance.path,
      'registerProcedure': instance.registerProcedure,
      'protocol': instance.protocol,
    };
