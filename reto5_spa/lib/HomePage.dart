import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reto4_spa/Circle.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:reto4_spa/HeaderColor.dart';
import 'package:reto4_spa/HeaderColor2.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List title = [
    "Single",
    "Couple",
    "Back to Back"
  ];

  final List description = [
    "Restore movements and rebuild strenght",
    "Restore movements and rebuild strenght",
    "Restore movements and rebuild strenght",
  ];

  final List imagePath = [
    "assets/images/single.svg",
    "assets/images/couple.svg",
    "assets/images/back.svg"
  ];

  int _selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent,animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffFCEDE3),
                Colors.white
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
              stops: [
                -1,
                1
              ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: <Widget>[


            ClipPath(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: RotatedBox(
                      quarterTurns: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffF5D3BD),
                                  Color(0xffF5D3BD)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                tileMode: TileMode.clamp,
                                stops: [
                                  -1,
                                  1
                                ]
                            )
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              clipper: headerColor2(),
            ),

            ClipPath(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: RotatedBox(
                      quarterTurns: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffEF9C65),
                                  Color(0xffEE9B64)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                tileMode: TileMode.clamp,
                                stops: [
                                  -1,
                                  1
                                ]
                            )
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: -100,
                    right: -80,
                    child: Circle(
                      colors: [
                        Colors.white12,
                        Colors.white12
                      ],
                      radius: 110,
                    ),
                  ),

                  Positioned(
                    top: 85,
                    right: 55,
                    child: Circle(
                      colors: [
                        Colors.white12,
                        Colors.white12
                      ],
                      radius: 35,
                    ),
                  ),

                  Positioned(
                    top: 130,
                    right: -10,
                    child: Circle(
                      colors: [
                        Colors.white12,
                        Colors.white12
                      ],
                      radius: 20,
                    ),
                  ),



                ],
              ),
              clipper: headerColor(),
            ),



            Positioned(
              bottom: 0,
              left: -70,
              child: Circle(
                colors: [
                Color(0xff33EF9C65),
                  Color(0xff33EF9C65),
                ],
              radius: 80,
              )
            ),

            Positioned(
                bottom: 0,
                left: 60,
                child: Circle(
                  colors: [
                    Color(0xff33EF9C65),
                    Color(0xff33EF9C65),
                  ],
                  radius: 25,
                )
            ),

            Positioned(
                bottom: 190,
                left: -20,
                child: Circle(
                  colors: [
                    Color(0xff33EF9C65),
                    Color(0xff33EF9C65),
                  ],
                  radius: 20,
                )
            ),

            Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric( horizontal: 15, vertical: 15),
                  child: Column(
                    children: <Widget>[

                      Container(
                        width: double.infinity,
                        height: 30,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0, right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.filter_list,
                                color: Colors.white,
                                size: 25,
                              ),

                              Text(
                                "Sozo",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 5, left: 8, right: 8),
                            itemCount: imagePath.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, index){
                              return services(index);
                            }
                        ),
                      )
                    ],
                  )
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: SnakeNavigationBar(
            style: SnakeBarStyle.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.only(bottom:10, left: 5, right: 5),
            elevation: 4,
            selectedIconColor:  Colors.white,
            selectionColor: Color(0xffEF9C65),
            backgroundColor: Colors.white,
            snakeShape: SnakeShape(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), bottomLeft: Radius.circular(0))), centered: false),
            currentIndex: _selectedItemPosition,
            onTap: (index) => setState(() => _selectedItemPosition = index),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('tickets')),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), title: Text('calendar')),
              BottomNavigationBarItem(icon: Icon(Icons.add_alert), title: Text('home')),
              BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), title: Text('microphone')),
            ],
          ),
        ),

      ),
    );

  }

  Widget services(int index){
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: double.infinity,
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.2,
                blurRadius: 10,
                offset: Offset(-1, 1)
              )
            ]

        ),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(15)
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFBE9DD),
                      Colors.white
                    ],
                    begin: index == 0 || index%2  == 0? Alignment.centerRight: Alignment(-0, -2) ,
                    end: index == 0 || index%2  == 0 ? Alignment(0, 2) : Alignment.centerRight,
                  )
                ),
              ),

              Align(
                alignment: index == 0 || index%2  == 0? Alignment.centerRight: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: SizedBox(
                    height: 150,
                    width: 130,
                    child: new SvgPicture.asset(
                      imagePath[index],
                      fit: BoxFit.scaleDown,
                      allowDrawingOutsideViewBox: true,

                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Align(
                  alignment: index == 0 || index%2  == 0? Alignment.centerLeft: Alignment.centerRight,
                  child: index == 0 || index%2  == 0?  Row(
                    children: <Widget>[


                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "${title[index]}",
                                style: TextStyle(
                                  color: Color(0xff6A6D8A),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "${description[index]}",

                                style: TextStyle(
                                    color: Color(0xffBBBDCA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: RaisedButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                color: Color(0xff6A6D8A),
                                child: Text(
                                  "BOOK NOW",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(width: 130,),

                    ],
                  ) : Row(
                    children: <Widget>[

                      SizedBox(width: 130,),

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "${title[index]}",
                                style: TextStyle(
                                  color: Color(0xff6A6D8A),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: Text(
                                "${description[index]}",
                                textAlign: TextAlign.right,

                                style: TextStyle(
                                    color: Color(0xffBBBDCA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: RaisedButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                color: Color(0xff6A6D8A),
                                child: Text(
                                  "BOOK NOW",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )

            ],
          )

        ),
      ),
    );
  }


}
