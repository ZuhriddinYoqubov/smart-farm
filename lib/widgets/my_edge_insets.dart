import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyEdgeInsets {
  static EdgeInsets symmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(horizontal: getUniqueW(h), vertical: getUniqueH(v));

  static EdgeInsets all(double size) => symmetric(
        h: getUniqueW(size),
        v: getUniqueH(size),
      );
}
