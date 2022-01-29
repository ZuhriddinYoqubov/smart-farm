import 'dart:math';
import 'dart:ui';
import 'package:smartfarm/core/components/exporting_packages.dart';

class RandomColor {
  static const List<Color> _colorList = [
    MyColors.primary,
    MyColors.green,
    MyColors.grey,
    MyColors.blue,
  ];

  static Color color() => _colorList[Random().nextInt(_colorList.length)];
}
