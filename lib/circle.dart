import 'dart:math';

import 'package:shape2_lesson4/colorable.dart';
import 'package:shape2_lesson4/shape.dart';

class Circle extends Shape with Colorable 
{
double _r; // радиус круга

Circle(this._r);

@override
  double area() {
  square=pow(_r, 2) * pi;  
  return square;
  }

  int getcolor()
  {
    return mycolor;
  }
}