import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';


class MyOutlinedButtonText extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;

  MyOutlinedButtonText({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = Colors.grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: MyTextBold(text: label),
      style: OutlinedButton.styleFrom(
        enableFeedback: false,
        primary: color,
        shape: MyShape.circular(radius: 7.0),
        side: BorderSide(color: color),
        padding: MyEdgeInsets.symmetric(h: 21.0, v: 7.0)
      ),
    );
  }
}
