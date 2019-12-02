import 'package:flutter/material.dart';
import 'package:roto7_balance_charts/HomePage.dart';
import 'package:roto7_balance_charts/StatisticPage.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        HomePage.routeName      : (BuildContext context) => HomePage(),
        StatisticPage.routeName : (BuildContext context) => StatisticPage()
      },
    );
  }
}
