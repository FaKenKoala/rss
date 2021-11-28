import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgetkit/flutter_widgetkit.dart';
import 'package:home_widget/home_widget.dart';
import 'package:rss/application/value_objects/rss_widget_data.dart';
import 'package:rss/presentation/rss_list/rss_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
    HomeWidget.widgetClicked.listen((Uri? uri) => loadData());
    loadData();
  }

  void loadData() async {
    await HomeWidget.getWidgetData<int>('_counter', defaultValue: 0)
        .then((value) {
      setState(() {
        _counter = value ?? 0;
      });
    });
  }

  Future<void> updateAppWidget() async {
    await HomeWidget.saveWidgetData<int>('_counter', _counter);
    await HomeWidget.updateWidget(
        name: 'AppWidgetProvider', iOSName: 'AppWidgetProvider');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rss: ${_counter}'),
      ),
      body: const RssListPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          test() {
            WidgetKit.setItem('rss_widget_data',
                jsonEncode(RssWidgetData('OK, Rss!')), 'group.com.wombat.rss');
            WidgetKit.reloadAllTimelines();
          }

          setState(() {
            _counter++;
          });
          updateAppWidget();
        },
        child: const Icon(
          Icons.widgets_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
