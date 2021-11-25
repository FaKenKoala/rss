import 'package:flutter/services.dart';

readXml() async {
  String data = await rootBundle.loadString('assets/files/guardian.xml');
  print('rss数据: $data');
}
