import 'package:flutter/material.dart';

class headerColor2 extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0, size.height-590);
    path.lineTo(size.width, size.height-340);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
