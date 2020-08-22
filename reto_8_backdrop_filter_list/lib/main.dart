import 'package:backdrop_filter_list/pages/back_drop_filter_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackDropFilterList(
      ),
    );
  }
}
