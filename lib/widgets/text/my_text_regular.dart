import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/core/components/size_config.dart';

class MyTextRegular extends StatelessWidget {
  final String text;
  double size;
  int? maxLines;
  Color color;
  TextAlign? textAlign;

  MyTextRegular({
    required this.text,
    this.textAlign,
    this.color = MyColors.grey,
    this.size = 14.0,
    Key? key,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: getUniqueW(size),
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'AvenirNext',
      ),
    );
  }
}
