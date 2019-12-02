import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:roto7_balance_charts/Responsive.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;


  int selectedItem =0;

  List bankCard = [
    "Pichincha",
    "Pacifico",
    "Guayaquil",
    "Central"
  ];

  List typeCard =[
    "assets/images/american.png",
    "assets/images/discover.png",
    "assets/images/master.png",
    "assets/images/visa.png",

  ];

  List dateCard =[
    "04/24",
    "04/25",
    "04/20",
    "04/22",

  ];

  List<String> numberCard =[
    "2839429193203257",
    "2839429193203257",
    "2839429193203257",
    "2839429193203257"
  ];

  List<List<Color>> gradients = [
    [
      Color(0xff2F4B6F),
      Color(0xff25B0CC)
    ],

    [
      Color(0xffFFA658),
      Color(0xffF16DAA),
    ],

    [

      Color(0xffE86EB5),
      Color(0xffB8BDD3)
    ],

    [

      Color(0xff7364F2),
      Color(0xffA6DFE7),
    ],

  ];


  List<LinearGradient> gradientsRatioPay = [
    LinearGradient(
        colors: [
          Color(0xff2CAEFF),
          Color(0xff4CD5E0),

        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [
          0.25, 0.75
        ]
    ),

    LinearGradient(
        colors: [
          Color(0xff2CAEFF),
          Color(0xff4CD5E0),
          Color(0xffFF88E9),

        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [
          0.25, 0.5, 0.75
        ]
    ),

    LinearGradient(
        colors: [
          Color(0xff2CAEFF),
          Color(0xff4CD5E0),
          Color(0xffFF88E9),
          Color(0xffE98076),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [
          0.2, 0.4, 0.6, 0.8
        ]
    )
  ];

  List services =[
    "Internet payments limit:",
    "Credit limit:",
    "Mortgage limit:",
    "Stores limit:"
  ];

  List servicesPayed =[
    105,
    890,
    400,
    700
  ];

  List servicesToPay =[
    200,
    1000,
    600,
    750,
  ];



  @override
  Widget build(BuildContext context) {

    final size = Responsive(context);


    FlutterStatusbarcolor.setStatusBarColor(Color(0xff282B33), animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return Container(
      color: Color(0xff282B33),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  children: <Widget>[

                    Container(
                      height: 235,
                      width: double.infinity,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Swiper(
                        onIndexChanged: (int index){
                          setState(() {
                            selectedItem = index;
                          });
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return  _creditCard(index);
                        },
                        itemCount: typeCard.length ,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: bankCard
                            .asMap()
                            .entries.map(
                                (MapEntry map) => _indicator(map.key)
                        ).toList(),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                "Balance: ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                ),
                              ),

                              SizedBox(height: 10,),

                              Text(
                                "\$596,00",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: 1
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){

                                  Navigator.of(context).pushNamed("second");

                                },
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Icon(Icons.account_balance_wallet,  color: Color(0xffCECFD7), size: 25,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff2E343D)
                                  ),
                                ),
                              ),

                              SizedBox(width: 15,),

                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Icon(Icons.more_horiz,  color: Color(0xffCECFD7), size: 35,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff2E343D)
                                  ),
                                ),
                              ),


                            ],
                          )




                        ],
                      ),
                    ),

                    SizedBox(height: 15,),

                    Container(
                      width: double.infinity,
                      height: size.heightPercent(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Color(0xff3C414D)),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "Min.credit payment in August: ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffCECFD7),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "\$119",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffCECFD7),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.info_outline,
                              color:  Color(0xffCECFD7),
                              size: size.inchPercent(3),

                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 25,),

                    Column(
                      children: services
                          .asMap()
                          .entries.map(
                              (MapEntry map) => _homeDetails(map.key, size)
                      ).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.transparent,
          child: SnakeNavigationBar(
            style: SnakeBarStyle.floating,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
            padding: EdgeInsets.only(bottom:10, left: 5, right: 5),
            selectedIconColor:  Colors.white,
            selectionColor: Color(0xff262931),
            backgroundColor: Color(0xff2E343D),
            snakeShape: SnakeShape(
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), bottomLeft: Radius.circular(0))), centered: false),
            currentIndex: _selectedItemPosition,
            onTap: (index) => setState(() => _selectedItemPosition = index),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,), title: Text('tickets')),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_basket,color: Colors.white,), title: Text('calendar')),
              BottomNavigationBarItem(icon: Icon(Icons.add_alert,color: Colors.white,), title: Text('home')),
              BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle,color: Colors.white,), title: Text('microphone')),
            ],
          ),
        ),
      )
    );
  }

  Widget _creditCard(int index){

     String numberCardResut = "";


    for(int i=0; i < 4; i++){
      numberCardResut = numberCardResut  + numberCard[index].substring(i*4, (i*4)+4) + "\n";

    }


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 5, left: 10, right: 10),
        height: double.infinity,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: gradients[index],
            tileMode: TileMode.clamp,
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,

          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "${bankCard[index]} | ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                          text: "Bank", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
                      )
                    ]
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top:10, right: 20),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage(
                        "assets/images/sim.png"
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "$numberCardResut",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                            letterSpacing: 3,
                            fontFamily: 'ocr'
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "${dateCard[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 45,
                          child: Image(
                            image: AssetImage(
                              typeCard[index],
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _indicator(int index){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 5,
        width: bankCard.length/1 <= 5 ? (bankCard.length/1)*8:(bankCard.length/1)*4,
        decoration: BoxDecoration(
            color: selectedItem == index? Colors.grey : Color(0xff202329),
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }

  Widget _homeDetails(int index, Responsive size){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: <Widget>[

          Stack(
            alignment: Alignment.center,
            children: <Widget>[

              Container(
                width: size.widthPercent(100),
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xff21242C),
                  borderRadius: BorderRadius.circular(20),

                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 10,
                    width: chartWidth(size.widthPercent(100), servicesPayed[index]/1,servicesToPay[index]/1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: selectGradient(servicesPayed[index]/1,servicesToPay[index]/1)
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  services[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xffCECFD7),
                    fontSize: 16,
                    letterSpacing: 0.5
                  ),
                ),

                Text(
                  "\$${servicesPayed[index]} / \$${servicesToPay[index]}",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 0.8
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }

  double chartWidth(double parentWidth, double payed, double toPay){

    final ratio = (parentWidth * payed) / toPay;

    return ratio;

  }

  LinearGradient selectGradient(double payed, double toPay){

    final ratio = payed / toPay;

    LinearGradient response;

    if(ratio<=0.5){
      response = gradientsRatioPay[0];

    }else if(ratio> 0.5 && ratio<=0.75){
      response = gradientsRatioPay[1];

    }else if(ratio>0.75){
      response = gradientsRatioPay[2];

    }

    return response;

  }
}
