
import 'package:shape2_lesson4/colorable.dart';
import 'package:shape2_lesson4/shape.dart';

class Rectangle extends Shape with Colorable {
  double _a; // длинна
  double _b; // ширина

  Rectangle(this._a, this._b);

  @override
  double area() {
    square=_a*_b;
    return square;
  }

  int getcolor()
  {
    return mycolor;
  }
}