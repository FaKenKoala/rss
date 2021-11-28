import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgetkit/flutter_widgetkit.dart';
import 'package:rss/application/value_objects/rss_widget_data.dart';
import 'package:rss/presentation/rss_list/rss_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rss'),
      ),
      body: const RssListPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          WidgetKit.setItem('rss_widget_data',
              jsonEncode(RssWidgetData('OK, Rss!')), 'group.com.wombat.rss');
          WidgetKit.reloadAllTimelines();
        },
        child: const Icon(
          Icons.widgets_outlined,
          color: Colors.orange,
        ),
      ),
    );
  }
}
