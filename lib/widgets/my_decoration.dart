import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';

class MyDecoration {
  static BoxDecoration circular({double radius = 10.0, Color? color}) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          getUniqueW(radius),
        ),
      );

  static BoxDecoration withImage({
    required String imageUrl,
    double radius = 10.0,
    Color? color,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(getUniqueW(radius)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      );
}
