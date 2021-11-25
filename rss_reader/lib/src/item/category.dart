import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
factory Category({
  required String value,
  String? domain,
}) = _RssCategory;

factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}