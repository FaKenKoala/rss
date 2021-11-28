import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';
import 'package:rss/presentation/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HomeWidget.registerBackgroundCallback(backgroundCallback);
  runApp(const MyApp());
}

Future<void> backgroundCallback(Uri? uri) async {
  if (uri?.host == 'update_counter') {
    int _counter = 0;
    await HomeWidget.getWidgetData('_counter', defaultValue: 0).then((value) {
      _counter = value ?? 0;
      _counter++;
    });
    await HomeWidget.saveWidgetData<int>('_counter', _counter);
    await HomeWidget.updateWidget(
        name: 'AppWidgetProvider', iOSName: 'AppWidgetProvider');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}
