import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:reto2_ecommerce/Responsive.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {

  runApp(homePage());
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHome(),
    );
  }
}


class myHome extends StatefulWidget {
  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {

  List iconsData = [
    Icons.cake,
    Icons.store,
    Icons.fastfood,
    Icons.restaurant_menu,
    Icons.tv
  ];

  List iconsDescription = [
    "Especial",
    "Store",
    "Fast food",
    "Menu",
    "Watch"
  ];

  List textCategory = [
    "Recommend",
    "New",
    "Popular",
  ];

  List imageRoutes = [
    "assets/images/img1.png",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",

  ];

  List imageDescription = [
    "Chocolate Cupcake",
    "Red velvet Ice cream",
    "Chips Giant Donut",
    "Rainbow Pie"
  ];

  List imageUser = [
    "Josias Piña",
    "Allan Espinoza",
    "Fernanda Suarez",
    "Kevin Pastor"
  ];

  List imagePrice = [
    "12,50",
    "5,60",
    "24,00",
    "22,50"
  ];

  int selected = 0;

  int selectedCategory = 0;


  @override
  Widget build(BuildContext context) {
    final size = Responsive(context);
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: new Icon(Icons.menu, color: Color(0xffDA8F78),),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
                radius: 20,

              ),
            ),
            SizedBox(width: 20,),

          ],
        ),

        body: ListView(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only( left: 25, right: 25),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF1F4F9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40,top: 8, bottom: 8),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff9E9DA5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Search..",
                        style: TextStyle(
                          color: Color(0xff9E9DA5),
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only( left: 25),
              child: Row(
                children: <Widget>[
                  RotatedBox(
                      quarterTurns: -1,
                      child: Container(
                        padding: EdgeInsets.only(left: size.widthPercent(20)),
                        child: Text(
                          "Last Added",
                          style: TextStyle(
                              color: Color(0xff745F70),
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      )
                  ),

                  Column(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: size.widthPercent(88),
                        padding: EdgeInsets.only(top: 10),
                        child: PageView(
                          controller: new PageController(
                            initialPage: 0,
                            viewportFraction: 0.9,
                          ),
                          children: <Widget>[
                            Container(
                              height: 130,
                              width: size.widthPercent(88),
                              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[100],),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/banner.jpg",),
                                      fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0xff46E6D2),
                                        blurRadius: 5.0
                                    )
                                  ]
                              ),

                            ),
                            Container(
                              height: 130,
                              width: size.widthPercent(88),
                              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[100],),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/banner.jpg",),
                                      fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0xffA578DD),
                                        blurRadius: 5.0
                                    )
                                  ]
                              ),

                            ),
                            Container(
                              height: 130,
                              width: size.widthPercent(88),
                              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[100],),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/banner.jpg",),
                                      fit: BoxFit.fitHeight
                                  ),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0xffFF6AAA),
                                        blurRadius: 5.0
                                    )
                                  ]
                              ),

                            ),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: iconsData
                            .asMap()
                            .entries.map(
                                (MapEntry map) => _icons(map.key)
                        ).toList(),
                      )
                    ],
                  ),
                ],
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RotatedBox(
                    quarterTurns: -1,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 25),
                          child: GestureDetector(
                            onTap: (){},
                            child: Icon(
                              Icons.filter_list,
                              color: Color(0xff50374A),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: textCategory
                              .asMap()
                              .entries.map(
                                  (MapEntry map) => _category(map.key)
                          ).toList(),
                        ),
                      ],
                    )
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: imageRoutes
                  .asMap()
                  .entries.map(
                      (MapEntry map) => _product(map.key, size)
                  ).toList(),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

  Widget _icons(int index){
    final response = Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: Material(
              color: Colors.white,
              child: Ink(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300],
                    ),
                    shape: BoxShape.circle,
                    color: selected == index ? Color(0xffFB9498):Colors.white

                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(1000.0),
                  child: Padding(
                    padding:EdgeInsets.all(1),
                    child: Icon(
                        iconsData[index],
                        color: selected== index? Colors.white: Color(0xff422136)
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              iconsDescription[index],
              style: TextStyle(
                color: Color(0xff422136)
              ),
            ),
          )
        ],
      ),
    );

    return GestureDetector(
      onTap: (){
        setState(() {
          selected = index;
        });
      },
      child: response,
    );
  }

  Widget _category(int index){

    final response = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      child: Column(
        children: <Widget>[
          Container(
            width: 70,
            height: 5,
            color: selectedCategory == index ?  Color(0xffD87D6A): Colors.white,
          ),
          SizedBox(height: 23,),
          Container(
            width: 80,
            child: Text(
              textCategory[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: selectedCategory == index ? Color(0xff745F70): Color(0xffB1A1AB),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );

    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategory = index;
        });
      },
      child: response,
    );
  }

  Widget _product(int index, Responsive size){

    final response = Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Container(
        height: size.heightPercent(17),
        width: size.widthPercent(80),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: size.heightPercent(12),
                  height: size.heightPercent(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          imageRoutes[index],
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                imageDescription[index],
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff745F70),
                                    fontFamily: "Baskervville",
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                            Icon(
                              Icons.favorite,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                          child: Row(
                            children: <Widget>[
                               RatingBar(
                                 initialRating: 3,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemSize: size.inchPercent(2),
                                 itemCount: 5,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                                   itemBuilder: (context, _) => Icon(
                                     Icons.star,
                                     color: Colors.amber,
                                   ),
                                   onRatingUpdate: (rating) {
                                     print(rating);
                                   },
                                 ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff745F70),

                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.store,
                                    color: Colors.grey,

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      imageUser[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              Text(
                                "\$ ${imagePrice[index]}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );

    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategory = index;
        });
      },
      child: response,
    );
  }

}
