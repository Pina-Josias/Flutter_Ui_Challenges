import 'package:flutter/material.dart';
import 'dart:math';

class ChartItem extends StatefulWidget {

  final double height;
  final double parentWidth;
  final List<IconData> icons;
  final List<String> categorySpend;
  final List<double> moneyBase;
  final List<double> moneyPayed;
  final List<DateTime> dateExpend;
  final Color color;

  const ChartItem({Key key, this.icons, this.categorySpend , this.moneyBase, this.moneyPayed, this.dateExpend, this.height, this.parentWidth, this.color,  }): super(key: key);

  @override
  _ChartItemState createState() => _ChartItemState();
}

class _ChartItemState extends State<ChartItem> {
  double maxvalue = 0;

  @override
  Widget build(BuildContext context) {

    maxvalue = widget.moneyBase.reduce(min);

    return Column(
      children:
      widget.categorySpend
      .asMap()
      .entries.map(
          (MapEntry map) => _item(map.key)
      ).toList(),
    );
  }

  Widget _item(int index){


    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:10.0, bottom: 10.0, right: 10 ),
                  child: Container(
                    height: widget.height,
                    width: widget.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: widget.color,

                    ),

                    child: Icon(
                      widget.icons[index],
                      color: Color(0xff686C78),
                      size: 25,
                    ),
                  ),
                ),

                Stack(
                  alignment: Alignment.centerLeft,

                  children: <Widget>[



                    Container(
                      width: chartWidth(widget.parentWidth, widget.moneyBase[index]/1,maxvalue),
                      height: widget.height,
                      decoration: BoxDecoration(
                        color: Color(0xff343A43),
                        borderRadius: BorderRadius.circular(15),

                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: widget.height,
                          width: chartWidth(widget.parentWidth, widget.moneyBase[index]/1,maxvalue),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: widget.moneyPayed[index] < widget.moneyBase[index] ? Color(0xff22C569): Color(0xffF2377B)
                          ),


                        ),
                      ),
                    ),


                  ],
                ),
              ],
            ),

            Container(
              width: widget.parentWidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.categorySpend[index],
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),


                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "\$ ${widget.moneyPayed[index]}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),

                  Text(
                    "of \$ ${widget.moneyBase[index]}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  double chartWidth(double parentWidth, double base, double maxvalue){

    final ratio = (parentWidth * base) / maxvalue;


    return ratio;

  }
}
