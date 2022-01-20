import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
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
  Color? boxshadowcolor;
  double? boxblurradius;
  double? boxspreadRadius;
  double? boxrighthorizontal;
  double? boxbottomvertically;
  AnimalButtons({
    required this.img,
    this.color = MyColors.primary,
    required this.text,
    this.height = 100.0,
    this.width = 100.0,
    this.righttxt = 10.0,
    this.bottomtxt = 10.0,
    this.righticon = 16.3,
    this.buttomicon = 10.0,
    this.radius = 10.0,
    this.boxshadowcolor = MyColors.grey,
    this.boxblurradius = 5.0,
    this.boxspreadRadius = 5.0,
    this.boxbottomvertically =5.0,
    this.boxrighthorizontal =5.0,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: boxshadowcolor!,
            blurRadius: boxblurradius!,
            spreadRadius: boxblurradius!,
            offset: Offset(
              boxrighthorizontal!,
              boxbottomvertically!,
            ),
          )
        ], borderRadius: BorderRadius.circular(radius!), color: color),
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
  /*EXAMPLE
   AnimalButtons(
            img: AnimalIcons.cow,
            text: "Cow",
            bottomtxt: 10.0,
            buttomicon: 10.0,
            boxblurradius: 10.0,
            boxbottomvertically: 10.0,
            boxrighthorizontal: 10.0,
            boxshadowcolor: MyColors.green,
            boxspreadRadius: 10.0,
            color: MyColors.black,
            height: 200.0,
            width: 200.0,
            radius: 20.0,
            righticon: 20.0,
            righttxt: 20.0,
          ),
  */
}