import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class PageIndicator extends StatelessWidget {
  Color color;
  int currentIndex;
  int length;

  PageIndicator({
    Key? key,
    this.color = MyColors.lightGrey,
    this.currentIndex = 0,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Wrap(children: List.generate(length, (index) => _setIndicator(index)));

  AnimatedContainer _setIndicator(int index) => AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    height: getUniqueW(7.0),
    width: getUniqueW(currentIndex == index ? 20 : 7.0),
    decoration: MyDecoration.circular(
      radius: 100,
      color: currentIndex == index ? color : color.withOpacity(0.4),
    ),
  );
}
