import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';

class MyTextRegular extends StatelessWidget {
  final String text;
  double? size;
  int? maxLines;
  Color? color;
  TextAlign? textAlign;

  MyTextRegular(
      {required this.text,
      this.textAlign,
      this.color,
      this.size = 14.0,
      Key? key,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
          fontSize: getUniqueH(size!),
          color: color,
          fontWeight: FontWeight.w400),
    );
  }
}
