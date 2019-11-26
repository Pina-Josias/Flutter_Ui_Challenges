import 'package:flutter/material.dart';
import 'package:flutter_challenge3/Circle.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:palette_generator/palette_generator.dart';

class homePAge extends StatefulWidget {
  static const String routeName = "home";

  @override
  _homePAgeState createState() => _homePAgeState();
}

class _homePAgeState extends State<homePAge> {

  final List<String> images = [
    "assets/images/beats1.png",
    "assets/images/beats3.png",
    "assets/images/beats4.png",
    "assets/images/beats5.png",
    "assets/images/beats6.png",
  ];

  final List<String> imagesDescription = [
    "The Decade Collection",
    "NBA-Raptors Black",
    "NBA-Raptors Rose Gold",
    "NBA-Raptors Silver",
    "NBA-Raptors Gold",
  ];

  List<PaletteColor> auxColors;


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
     auxColors = [];

   }






  @override
  Widget build(BuildContext context) {

    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);



    List<Widget> _listProduct = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 330,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffE55B4B),
                                Color(0xffE84C3E)
                              ],
                              begin:Alignment.topLeft,
                              end:  Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child:  Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    "WARRIORS\nROYAL BLUE",
                                    style: TextStyle(
                                        color: Color(0xffEB7F71),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        'Beats Studio3 Wireless',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),

                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 18,
                                      )

                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          '\$349,35',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),

                                      Container(
                                        height: 50,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            color: Color(0xffEAA637),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )
                                        ),

                                        child: Center(
                                          child: Text(
                                            "Add to bag",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),



                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Positioned(
                  left: -40,
                  top: 10,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/beats1.png")
                        )
                    ),
                  )
              )

            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 330,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffE55B4B),
                                Color(0xffE84C3E)
                              ],
                              begin:Alignment.topLeft,
                              end:  Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child:  Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    "WARRIORS\nROYAL BLUE",
                                    style: TextStyle(
                                        color: Color(0xffEB7F71),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        'Beats Studio3 Wireless',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),

                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 18,
                                      )

                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          '\$349,35',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),

                                      Container(
                                        height: 50,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            color: Color(0xffEAA637),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )
                                        ),

                                        child: Center(
                                          child: Text(
                                            "Add to bag",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),



                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Positioned(
                  left: -40,
                  top: 10,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/beats1.png")
                        )
                    ),
                  )
              )

            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 330,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffE55B4B),
                                Color(0xffE84C3E)
                              ],
                              begin:Alignment.topLeft,
                              end:  Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(25)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child:  Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    "WARRIORS\nROYAL BLUE",
                                    style: TextStyle(
                                        color: Color(0xffEB7F71),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        'Beats Studio3 Wireless',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),

                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 18,
                                      )

                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          '\$349,35',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),

                                      Container(
                                        height: 50,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            color: Color(0xffEAA637),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )
                                        ),

                                        child: Center(
                                          child: Text(
                                            "Add to bag",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),



                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Positioned(
                  left: -40,
                  top: 10,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/beats1.png")
                        )
                    ),
                  )
              )

            ],
          ),
        ),
      ),

    ];


    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: <Widget>[
          Positioned(
            right: -420,
            top: -100,
            child: Circle(
              radius: 330,
              colors: [
                Color(0xffF9F9F9),
                Color(0xffF9F9F9)
              ],
            ),
          ),

          ListView(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            children: <Widget>[
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            onTap: (){

                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey,
                              size: 20,
                            )
                        ),

                        Row(
                          children: <Widget>[
                            GestureDetector(
                                onTap: (){},
                                child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 25,
                                )
                            ),
                            SizedBox(width: 18,),

                            GestureDetector(
                                onTap: (){},
                                child: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.grey,
                                  size: 25,
                                )
                            ),
                            SizedBox(width: 18,),

                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/men.jpg")
                                  )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Beats\n",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    letterSpacing: 0.3,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            TextSpan(
                                text: "by Dre",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.grey,
                                    letterSpacing: 0.3
                                )
                            ),
                          ]
                        ),
                      ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            RotatedBox(
                              quarterTurns: -1,
                              child: Text("Work hard and have fun     ",
                                style: TextStyle(
                                  color: Colors.grey,

                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 350,
                              width: 371,
                              child: PageView(

                                scrollDirection: Axis.horizontal,
                                controller: new PageController(
                                  viewportFraction: 0.8,
                                  initialPage: 0,
                                ),
                                children: _listProduct,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  "Popular Beats Products",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3
                  ),
                ),
              ),

              productList()




            ],
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffE55B4B),
                                Color(0xffE84C3E)
                              ],
                              begin:Alignment.topLeft,
                              end:  Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )
                      ),

                      child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }

  Future<List<PaletteColor>> getPalette() async{

    List<PaletteColor> _colors = [];

      for(String image in images){
        final PaletteGenerator generator = await PaletteGenerator.fromImageProvider(
            AssetImage(image),
            size: Size(200,100)
        );

        _colors.add(generator.lightMutedColor != null ? generator.lightMutedColor: PaletteColor(Colors.lightBlue, 2));
      }

      return _colors;

  }

  Widget productList(){

     return FutureBuilder(
       future: getPalette(),
       builder: (BuildContext context, AsyncSnapshot<List<PaletteColor>> snapshot){
         if(snapshot.hasData){

           auxColors = snapshot.data;

           return Padding(
             padding: const EdgeInsets.symmetric(vertical: 10),
             child: Column(
               children: images
                   .asMap()
                   .entries.map(
                       (MapEntry map) => productListItem(map.key)
               ).toList(),
             ),
           );


         }else if(snapshot.hasError){
           return Center(
             child: Text("Error de la data"),
           );
         }else {
           return Center(
             child: CircularProgressIndicator(),
           );
         }

       }


     );



  }

   Widget productListItem(int index){
     final response = Card(
       shape:  RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
       ),
       elevation: 1,
       child: Container(
         width: double.infinity,
         height: 70,
         child: Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
                 height: 50,
                 width: 40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: DecorationImage(
                     image: AssetImage(images[index]),
                     fit: BoxFit.fill,
                     colorFilter: new ColorFilter.mode(auxColors.isNotEmpty ? auxColors[index].color: Colors.transparent, BlendMode.multiply),

                   ),

                 ),
               ),
             ),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                         imagesDescription[index]
                     ),
                     SizedBox(height: 10,),
                     Text(
                         "\$399.99",
                       style: TextStyle(
                         fontSize: 14,
                         color: Colors.grey
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );

     return GestureDetector(
       onTap: (){

       },
       child: response,
     );
   }
}
