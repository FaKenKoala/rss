import 'package:freezed_annotation/freezed_annotation.dart';

part 'rss_widget_data.freezed.dart';
part 'rss_widget_data.g.dart';

@freezed
class RssWidgetData with _$RssWidgetData {
  factory RssWidgetData(String text) = _RssWidgetData;

  factory RssWidgetData.fromJson(Map<String, dynamic> json) => _$RssWidgetDataFromJson(json);
}
