import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final text = "A commanding woman versed in politics, diplomacy, and governance; fluent in nine languages; silver-tongued and charismatic, Cleopatra nonetheless seems the joint creation of Roman propagandists and Hollywood directors.";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff231733),
      child: ListView(
        children: <Widget>[
          SizedBox(height: 50,),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black26, width: 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/girl.jpg"
                ),
                fit: BoxFit.fitHeight,
                colorFilter: new ColorFilter.mode(Colors.black26, BlendMode.multiply)
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                  size: 50,
                ),

                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                      height: 2,
                      width: 70,
                      child: Divider(
                        height: 1,
                        color:Color(0xff7E788B),
                      )
                  ),
                )
                ,
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 50,
                )


              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30, left: 35, right: 35),
            child: Divider(height: 0.2,color:Color(0xff7E788B),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25, left: 35, right: 35, bottom: 10),
            child: Column(
              children: <Widget>[
                ExpandablePanel(
                  header: Text("About me",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5
                    ),),
                  collapsed: Text(
                    text,
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,

                    style: TextStyle(
                        color: Color(0xff7E788B),
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  expanded: Text(text, softWrap: true, style: TextStyle(
                      color: Color(0xff7E788B),
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),),
                  tapHeaderToExpand: true,
                  hasIcon: true,
                  iconColor: Colors.white,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Divider(height: 1,color:Color(0xff7E788B),),
                ),


                ExpandablePanel(
                  header: Text("Timeline",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5
                    ),),
                  collapsed: Text(
                    text,
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Color(0xff7E788B),

                        fontWeight: FontWeight.w500,
                        fontSize: 16
                    ),),
                  expanded: Text(text, softWrap: true, style: TextStyle(
                      color: Color(0xff7E788B),
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  ),),
                  tapHeaderToExpand: true,
                  hasIcon: true,
                  iconColor: Colors.white,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Divider(height: 1,color:Color(0xff7E788B),),
                ),
              ],
            ),
          )

        ],
      ),

    );
  }
}
