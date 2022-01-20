import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/const_colors.dart';

class AnimalButtons extends StatelessWidget {
  String? img;
  Color? color;
  double? radius;
  String? text;
  double? height;
  double? width;
  double? righttxt;
  double? bottomtxt;
  double? righticon;
  double? buttomicon;
  AnimalButtons({
    required this.img,
    this.color = primary,
    required this.text,
    this.height = 100.0,
    this.width = 100.0,
    this.righttxt = 10.0,
    this.bottomtxt = 10.0,
    this.righticon = 16.3,
    this.buttomicon = 10.0,
    this.radius = 10.0,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius!), color: color),
        child: Column(
          children: [
            SizedBox(
              height: getUniqueH(bottomtxt!),
            ),
            Row(
              children: [
                SizedBox(
                  width: getUniqueW(righttxt!),
                ),
                Text(text!),
              ],
            ),
            SizedBox(
              height: getUniqueH(buttomicon!),
            ),
            Row(
              children: [
                SizedBox(
                  width: getUniqueW(righticon!),
                ),
                Image.asset(img!),
              ],
            )
          ],
        ));
  }
}
