import 'package:flutter/material.dart';

class AnimalButtons extends StatelessWidget {
  String? img;
  Color? color;
  String? text;
  AnimalButtons({
    required this.img,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Image.asset(img!),
      ),
    );
  }
}
