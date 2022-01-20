import 'package:flutter/material.dart';

class MyEdgeInsets {
  static EdgeInsets symmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(horizontal: h, vertical: v);

  static EdgeInsets all(double size) => symmetric(h: size, v: size);
}
