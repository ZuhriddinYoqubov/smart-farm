import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/my_border_radius.dart';
import 'package:smartfarm/widgets/text/my_text_medium.dart';

class AnimalButtons extends StatelessWidget {
  String? img;
  Color? color;
  String text;

  AnimalButtons({
    required this.img,
    this.color = MyColors.primary,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white,
      borderRadius: MyBorder.circular(),
      onTap: () {},
      child: Container(
        // margin: MyEdgeInsets.symmetric(h: 5.0),
        padding: MyEdgeInsets.only(top: 15.0, left: 10.0),
        height: getUniqueH(100.0),
        width: getUniqueW(100.0),
        decoration: MyDecoration.circular(color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextMedium(text, size: 18.0),
            Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                borderRadius: MyBorder.circular(),
                child: Image.asset(img!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
