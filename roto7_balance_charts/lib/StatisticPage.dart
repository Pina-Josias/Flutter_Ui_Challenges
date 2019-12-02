import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:roto7_balance_charts/ChartItem.dart';
import 'package:roto7_balance_charts/Responsive.dart';

class StatisticPage extends StatefulWidget {
  static const routeName = "second";
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {

  bool isShowingMainData;
  int selectOption;
  int selectOptionSpend;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
    selectOption =0;
    selectOption =0;

  }

  List options = [
    "Year",
    "Quarter",
    "Month"
  ];

  List<String> categorySpend = [
    "Year",
    "Quarter",
    "Month"
  ];


  List optionSpend = [
    "May",
    "June",
    "July",
    "August"
  ];
  @override
  Widget build(BuildContext context) {
    final size = Responsive(context);
    return Scaffold(
      backgroundColor: Color(0xff22E343D),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 15),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Statistc",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Income / Outgo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18
                        ),
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "2019",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        ),
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: options
                        .asMap()
                        .entries.map(
                            (MapEntry map) => _option(map.key)
                        ).toList(),
                      ),

                    ],
                  ),
                ],
              ),

            ),

            SizedBox(height: 20,),

            Container(

              child: Padding(
                  padding: const EdgeInsets.only(right: 0.0, left: 0.0),
                  child: LineChart(
                    sampleData1() ,
                    swapAnimationDuration: Duration(milliseconds: 250),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 30, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Spendings",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 21
                        ),
                      ),

                      Row(
                        children: optionSpend
                        .asMap()
                        .entries.map(
                            (MapEntry map) => _optionSpend(map.key)
                        ).toList(),
                      )
                    ],
                  ),

                  SizedBox(height: 15,),

                  ChartItem(
                    height: 50,
                    parentWidth: size.widthPercent(45),
                    color: Color(0xff343A43),
                    categorySpend: categorySpend,
                    icons: [
                      Icons.info_outline,
                      Icons.map,
                      Icons.print
                    ],
                    moneyBase: [
                      900,1200, 930
                    ],
                    moneyPayed: [
                      630, 450, 850
                    ],

                  )
                ],
              ),

            )

          ],
        ),
      ),

    );
  }

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List<Color> gradientColorsA = [
    const Color(0xffF2377B),
    const Color(0xffB5295B),

  ];


  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.black26,
        ),
        touchCallback: (LineTouchResponse touchResponse) {
          print(touchResponse);
        },
        handleBuiltInTouches: true,
      ),
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: TextStyle(
            color:  Colors.grey[200],
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '';
              case 4:
                return 'JUNE';
              case 8:
                return 'JULY';
              case 12:
                return 'AUGUST';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
          textStyle: TextStyle(
            color: const Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border(
            bottom: BorderSide(
              color: Colors.black26,
              width: 4,
            ),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 15,
      maxY: 10000,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    LineChartBarData lineChartBarData1 = const LineChartBarData(
      spots: [
        FlSpot(0, 4700),

        FlSpot(4, 2357),
        FlSpot(8, 9600),
        FlSpot(12, 1899),
        FlSpot(15, 5000),


      ],
      isCurved: true,
      curveSmoothness: 0.5,
      preventCurveOverShooting: true,
      colors: [
         Color(0xffB3D84C87),
        Color(0xff22E343D),
      ],

      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: true,
        dotColor: Color(0xffF2377B),
        dotSize: 7
      ),
      belowBarData: BarAreaData(

        show: true,
        gradientColorStops: [
          0.1,
          1,

        ],
        colors: [
          Color(0xff99A4426E),
          Color(0xff22E343D),
        ],


        gradientTo: Offset(
            0,1
        ),




      ),
    );
    final LineChartBarData lineChartBarData2 =  LineChartBarData(
      spots: [
        FlSpot(0, 5500),
        FlSpot(4, 4700),
        FlSpot(8, 7500),
        FlSpot(12, 5200),
        FlSpot(15, 6000),


      ],
      isCurved: true,
      preventCurveOverShooting: true,
      curveSmoothness: 0.5,

      colors: [
        Color(0xff6581CE)
      ],
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: true,
        dotSize: 7,
        dotColor: Color(0xff425A98)
      ),
      belowBarData: BarAreaData(


          show: true,
          colors:  [
            Color(0xff994E5F87),
            Colors.transparent,
          ],
        gradientTo: Offset(
          0,1
        ),


        gradientColorStops: [
          0.35,
          1,

        ],
    ),
    );

    return [
      lineChartBarData2,
      lineChartBarData1,
    ];
  }

  Widget _option(int index){
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectOption = index;
          });
        },
        child: Container(
          child: Text(
            options[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: selectOption == index ? FontWeight.bold:FontWeight.w300,
              color: selectOption == index ? Colors.white: Colors.grey[200],
              letterSpacing: 0.5
            ),
          ),
        )
      ),
    );
  }

  Widget _optionSpend(int index){
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
          onTap: (){
            setState(() {
              selectOptionSpend = index;
            });
          },
          child: Container(
            child: Text(
              optionSpend[index],
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: selectOptionSpend == index ? FontWeight.bold:FontWeight.w300,
                  color: selectOptionSpend == index ? Colors.white: Colors.grey[200],
                  letterSpacing: 0.5
              ),
            ),
          )
      ),
    );
  }


}
