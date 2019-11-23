import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DiscoveryPage extends StatefulWidget {
  static const String routeName = "DiscoverPage";

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {


  List imageRoutes = [
    'assets/images/food1.jpg',
    'assets/images/food2.jpeg',
    'assets/images/food3.jpg',
    'assets/images/food4.jpeg'
  ];

  List imageRoutesPrice = [
    '\$5.99',
    '\$13.50',
    '\$9.00',
    '\$14.30'
  ];

  List imageDescription = [
    'Delectable',
    'Delicious.',
    'Exquisite.',
    'Luscious.'
  ];

  int selectedItem = 0;

  List imageIconsRoutes = ['assets/images/brocheta.png',
    'assets/images/atun.png',
    'assets/images/burrito.png',
    'assets/images/hamburguesa.png',
    'assets/images/pizza.png',
    'assets/images/ramen.png'
  ];

  List imageIconsDescription = [
    'Turkish',
    'Japanese',
    'Mexican',
    'American',
    'Italian',
    'Chinese'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 2.0,

          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage(
                  'assets/images/heyo_logo.png'
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: (){},
                icon: Icon(Icons.explore),
                label: Text("Ecuador")
            )
          ],
        ),

        body:SingleChildScrollView(
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                height: 270.0,
                width: double.infinity,
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Stack(
                        children: <Widget>[
                          new Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(imageRoutes[index],
                                    ),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(Colors.black26, BlendMode.multiply)
                                )
                            ),
                          ),
                          new Align(
                            alignment: Alignment.center,
                            child: Text(
                              imageDescription[index],

                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2

                              ),
                            ),
                          )

                        ],
                      ),
                    );
                  },
                  itemCount: imageRoutes.length,
                  viewportFraction: 0.8,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  )
              ),

              SizedBox(height: 20,),
              Container(
                height: 120,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageIconsDescription.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 100,
                            width: 100,
                            child: GestureDetector(
                              onTap: (){

                                setState(() {
                                  selectedItem = index;
                                });

                              },
                              child: Material(
                                child: Ink(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: selectedItem==index ? Color(0xffFFDACC):Colors.grey[500], width: 3),
                                      shape: BoxShape.circle
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(1000.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(11),
                                      child: Image(
                                        image: AssetImage(imageIconsRoutes[index]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            imageIconsDescription[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: selectedItem==index ? Color(0XFFFF7A48):Colors.grey[500]
                            ),
                          ),
                        ],
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Divider(height: 10, color: Colors.grey[400],),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "396 Restaurants",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),

                    FlatButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.filter_list, color: Color(0XFFFF4C0F)),
                        label: Text(
                          "Filter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFFF4C0F),
                              fontSize: 18
                          ),
                        )
                    )
                  ],
                ),
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: imageRoutes
                .asMap()
                .entries.map(
                    (MapEntry map) => products(map.key)
                ).toList(),
              )
            ],
          ),
        )
    );
  }

  Widget products(int index){

    final response = Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),

      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  imageRoutes[index],
                ),
                colorFilter: new ColorFilter.mode(Colors.black54, BlendMode.multiply),
                fit: BoxFit.cover,
              ),

            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                imageRoutesPrice[index],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white

                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.favorite_border, color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,"detail",arguments: imageRoutes);
        print(index);
      },
      child: response,
    );
  }
}


