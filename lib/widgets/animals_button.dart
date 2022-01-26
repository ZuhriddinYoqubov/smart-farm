import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/my_border_radius.dart';

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
      borderRadius: MyBorder.circular(),
      onTap: () {},
      child: Container(
        padding: MyEdgeInsets.only(top: 15.0, left: 10.0),
        height: getUniqueH(100.0),
        width: getUniqueW(100.0),
        decoration: MyDecoration.circular(color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextSemibold(text: text, size: 18.0),
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
