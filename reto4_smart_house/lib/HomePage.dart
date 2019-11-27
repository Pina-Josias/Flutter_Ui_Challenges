import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
class HomePage extends StatefulWidget {
  static const routeName = "home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List climate = [
    "Temperature",
    "Humidity",
    "Lights",
    "Electricity"
  ];

  final List climateData = [
    23,
    75,
    5,
    140,
  ];

  int selected= 0;

  final List iconsRoutes = [
    "assets/images/sofa.png",
    "assets/images/camarero.png",
    "assets/images/cama.png"
  ];

  final List iconsDescription = [
    'Living Room',
    'Kitchen',
    'Bedroom',
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);



    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[


          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 80,
                width: 120,
                color: Color(0xffE8F4FF),



              ),
            ),
          ),

          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        "Sept 20, 2019",
                      style: TextStyle(
                          color: Color(0xff97ABC0),
                          fontSize: 18
                      ),
                    ),
                    Text(
                        "WelcomeHome",
                      style: TextStyle(
                          color: Color(0xff627F9C),
                          fontSize: 22
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  color: Color(0xffC9DCEE),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60)
                  )
              ),

            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 80,
                width: 120,
                decoration: BoxDecoration(
                    color: Color(0xffC9DCEE),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60)
                    )
                ),
                child: Center(

                  child: Icon(
                    Icons.filter_list,
                    color: Color(0xff90AFD0),
                    size: 40,
                  ),
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[


                  Row(

                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: 290,
                            height: 480,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F9FF),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  bottomLeft: Radius.circular(60)
                              )
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 40,),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(left: 40),
                                      child: Image(
                                        image: AssetImage("assets/images/clima.png"),
                                        fit: BoxFit.cover,
                                        height: 30,
                                        width: 50,
                                      ),
                                    ),

                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                                "Outdoor",
                                              style: TextStyle(
                                                color: Color(0xff97ABC0),
                                                fontSize: 15
                                              ),
                                            ),
                                            Text(
                                                "Partly Cloudy",
                                                style: TextStyle(
                                                    color: Color(0xff627F9C),
                                                    fontSize: 18
                                                ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Container(
                                  height: 320,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/sala.jpg"
                                      ),
                                      fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffD0E0F4),
                                        blurRadius: 30,
                                        offset: Offset(-1, 1),
                                        spreadRadius: 5
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 15,),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                children: <Widget>[

                                    Container(
                                      height: 80,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFDFEFE),
                                          border: Border.all(
                                              color: Colors.grey[300],
                                              width: 0.3
                                          )
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                  climate[0],
                                                style: TextStyle(
                                                  color: Color(0xffA2B6CC),
                                                  fontSize: 16
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10.0),
                                                child: Text(
                                                    "${climateData[0]} °C",
                                                  style: TextStyle(
                                                      color: Color(0xff7195BD),
                                                      fontSize: 25
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ),


                                    Container(
                                    height: 80,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFDFEFE),

                                        border: Border.all(
                                            color: Colors.grey[300],
                                            width: 0.3
                                        )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                                climate[1],
                                              style: TextStyle(
                                                  color: Color(0xffA2B6CC),
                                                  fontSize: 16
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                  "${climateData[1]}%",
                                                style: TextStyle(
                                                    color: Color(0xff7195BD),
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),



                              Row(
                                children: <Widget>[

                                  Container(
                                    height: 80,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFDFEFE),

                                        border: Border.all(
                                            color: Colors.grey[300],
                                            width: 0.3
                                        )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                                climate[2],
                                              style: TextStyle(
                                                  color: Color(0xffA2B6CC),
                                                  fontSize: 16
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                  "${climateData[2]} Lamps",
                                                style: TextStyle(
                                                    color: Color(0xff7195BD),
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height: 80,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFDFEFE),

                                        border: Border.all(
                                            color: Colors.grey[300],
                                            width: 0.3
                                        )
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                                climate[3],
                                              style: TextStyle(
                                                  color: Color(0xffA2B6CC),
                                                  fontSize: 16
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                  "${climateData[3]} Kw",
                                                style: TextStyle(
                                                    color: Color(0xff7195BD),
                                                    fontSize: 25
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          )
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Container(
                            width: 120,
                            height: 667,
                            color: Color(0xffE8F4FF),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[

                                  Column(

                                    children: iconsRoutes
                                    .asMap()
                                    .entries.map(
                                        (MapEntry map) => _iconsRight(map.key)
                                    ).toList(),
                                  ),



                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )



        ],
      ),

    );
  }

  Widget _iconsRight(int index){
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Container(
        height: 100,
        width: 90,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image(
              image: AssetImage(
                iconsRoutes[index],
              ),
              height: 35,
              width: 35,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  iconsDescription[index],
                  style: TextStyle(
                    color: Color(0xff728EA9),
                    fontSize: 14,
                    fontWeight: selected == index ? FontWeight.bold: FontWeight.normal
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }

}
