import 'dart:math' as math;

import 'package:flutter/cupertino.dart';

class Responsive{

  double width, height, inch;


  Responsive(BuildContext context){
    final size = MediaQuery.of(context).size;

    width = size.width;
    height= size.height;
    inch = math.sqrt(math.pow(height, 2) + math.pow(width, 2));

  }


  double widthPercent(double percent){
    return width * percent / 100;

  }

  double heightPercent(double percent){
    return height * percent / 100;

  }

  double inchPercent(double percent){
    return inch * percent / 100;

  }
}