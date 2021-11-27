import 'package:flutter/material.dart';
import 'package:rss/presentation/rss_list/rss_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const RssListPage();
  }
}
