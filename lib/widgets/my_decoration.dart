import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';

class MyDecoration {
  static BoxDecoration circular({double radius = 0.0, Color? color}) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          getUniqueW(radius),
        ),
      );
}
