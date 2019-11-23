import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:reto1_restaurant/DiscoverPage.dart';

class myHome extends StatefulWidget {
  static const String routeName = 'HomePage';
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {


  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 2.0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage(
                'assets/images/heyo.jpg'
            ),
          ),
        ),

        actions: <Widget>[
          GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.translate,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),

      body: Center(
          child:   Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 30,),

                  Text(
                    "All Your Favorites.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5
                    ),
                  ),

                  Text(
                    "Order from the best local restaurants \nwith easy, on-demand delivery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 20
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/food.png'
                          ),
                        )
                    ),
                  ),


                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffFFE3D9),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)
                      )
                  ),

                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              print("boton 1");
                            },
                            child: Container(
                              height: 60,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child: Center(
                                child: Text(
                                  "Sing in"
                                  ,style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed('DiscoverPage');
                            },
                            child: Container(
                              height: 60,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Color(0xffFF4500),
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child: Center(
                                child: Text(
                                  "Get Started"
                                  ,style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                            ),
                          )

                        ],
                      ),

                      SizedBox(height: 25,),

                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                                fontSize: 12
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "By signing up, I agree the heyo "
                              ),
                              TextSpan(
                                  text: "terms of service\nand privacy policy", style: TextStyle(
                                decoration: TextDecoration.underline,
                              )
                              ),
                            ]
                        ),
                      )
                    ],
                  ),


                ),
              )
            ],
          )
      ),
    );
  }
}