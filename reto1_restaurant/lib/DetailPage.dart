import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DetailPage extends StatefulWidget {
  static const String routeName = "detail";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  int _radioValue = 0;
  void _handleChoiseChanged(int value){
    setState(() {
      _radioValue = value;

      switch(_radioValue){
        case 0:
          break;

        case 1:
          break;

        case 2:
          break;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);

    final List objectImages = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: new Swiper(
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(objectImages[index]),
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black26, BlendMode.multiply)
                          ),
                        ),
                      );
                    },
                    itemCount: objectImages.length,
                    autoplay: true,
                    loop: true,

                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Swiss cheese, VCH original spread and\npickles. No modifications",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Divider(height: 20,color: Colors.grey[400], ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bread Choises",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Whole wheat ( Sliced )",
                          style: TextStyle(
                            fontSize: 17,
                            color: _radioValue == 0 ? Colors.black: Colors.grey
                          ),
                        ),

                        new Radio(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleChoiseChanged,
                            activeColor: Color(0xffFF4500),
                        )
                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "3rd Slice / Double Decker",
                            style: TextStyle(
                                fontSize: 17,
                                color: _radioValue == 1 ? Colors.black: Colors.grey
                            ),
                        ),

                        new Radio(
                          value: 1,
                          groupValue: _radioValue,
                          onChanged: _handleChoiseChanged,
                          activeColor: Color(0xffFF4500),
                        )
                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "Dutch Crunch Roll",
                            style: TextStyle(
                                fontSize: 17,
                                color: _radioValue == 2 ? Colors.black: Colors.grey
                            ),
                        ),

                        new Radio(
                          value: 2,
                          groupValue: _radioValue,
                          onChanged: _handleChoiseChanged,
                          activeColor: Color(0xffFF4500),
                        )
                      ],

                    ),

                    SizedBox(height: 40,),

                    RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      color: Color(0xffFF4500),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Add to Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.4
                                ),
                              ),

                              Text(
                                "\$ 15.90",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black54,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),

                  ],
                ),
              )
          ),

          Positioned(
            top: 150,
            left: 30,
            child: Text(
              "Old\nFashioned.",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.3,

              ),
            ),
          )
        ],
      ),
    );
  }



}
