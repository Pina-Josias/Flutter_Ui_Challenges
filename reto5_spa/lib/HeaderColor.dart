import 'package:flutter/material.dart';

class headerColor extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    var path = new Path();
    path.lineTo(0.0, size.height-600);
    path.lineTo(size.width, size.height-350);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
