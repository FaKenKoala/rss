import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud.freezed.dart';
part 'cloud.g.dart';

@freezed
class Cloud with _$Cloud {
  factory Cloud({
    required String domain,
    required int port,
    required String path,
    required String registerProcedure,
    required String protocol,
  }) = _RssCloud;

  factory Cloud.fromJson(Map<String, dynamic> json) => _$CloudFromJson(json);
}
