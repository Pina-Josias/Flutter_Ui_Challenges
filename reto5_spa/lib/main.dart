import 'package:flutter/material.dart';
import 'package:reto4_spa/HomePage.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home' ,
      routes: {
        HomePage.routeName:   (BuildContext context) => HomePage(),
      },
    );
  }
}

