import 'package:flutter/cupertino.dart';

class MyShape {
  static RoundedRectangleBorder circular({double radius = 10.0}) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));
}
