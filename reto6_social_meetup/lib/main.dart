import 'package:flutter/material.dart';
import 'package:reto5_social_meetup/ButtonTabBar.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:reto5_social_meetup/FirsPage.dart';
import 'package:expandable/expandable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // TickerProviderStateMixin allows the fade out/fade in animation when changing the active button

  // this will control the button clicks and tab changing
  TabController _controller;

  // this will control the animation when a button changes from an off state to an on state
  AnimationController _animationControllerOn;

  // this will control the animation when a button changes from an on state to an off state
  AnimationController _animationControllerOff;

  // these will be our tab icons. You can use whatever you like for the content of your buttons
  List<IconData> _icons = [
    Icons.star,
    Icons.whatshot,
    Icons.call,
    Icons.contacts,
    Icons.email,
    Icons.donut_large
  ];


  List _description = [
    "You",
    "Hot",
    "Call",
    "Contacts",
    "Mails",
    "Settings"
  ];
  // scroll controller for the TabBar
  ScrollController _scrollController = new ScrollController();

  // this will save the keys for each Tab in the Tab Bar, so we can retrieve their position and size for the scroll controller
  List _keys = [];


  @override
  void initState() {
    super.initState();

    for (int index = 0; index < _icons.length; index++) {
      // create a GlobalKey for each Tab
      _keys.add(new GlobalKey());
    }

    // this creates the controller with 6 tabs (in our case)
    _controller = TabController(vsync: this, length: _icons.length);


    _animationControllerOff =
        AnimationController(vsync: this, duration: Duration(milliseconds: 75));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOff.value = 1.0;

    _animationControllerOn =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    // so the inactive buttons start in their "final" state (color)
    _animationControllerOn.value = 1.0;

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return Scaffold(
      body: Stack(
        children: <Widget>[

          TabBarView(
            // and it is controlled by the controller
            controller: _controller,
            children: <Widget>[
              // our Tab Views
              FirstPage(),
              Icon(_icons[1]),
              Icon(_icons[2]),
              Icon(_icons[3]),
              Icon(_icons[4]),
              Icon(_icons[5])
            ],
          ),

          SafeArea(
            child: buttonTabBar(
              heightAppBar: 110,
              description: _description,
              scrollDirection: Axis.horizontal,
              controller: _controller,
              animationControllerOn: _animationControllerOn,
              animationControllerOff: _animationControllerOff,
              backgroundOn_Off: [
                Color(0xff8A56AC),
                Colors.white
              ],
              foregroundOn_Off: [
                Color(0xff8A56AC),
                Color(0xff5F4E6A),
              ],
              icons: _icons,
              itemsCount: _icons.length,
              keyButton: _keys,
              scrollController: _scrollController,
            ),
          ),


      ]),
    );
  }



}