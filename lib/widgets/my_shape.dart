import 'package:flutter/cupertino.dart';

class MyShape {
  static RoundedRectangleBorder circular({
    double radius = 10.0,
    BorderSide borderSide = BorderSide.none,
  }) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: borderSide,
      );
}
