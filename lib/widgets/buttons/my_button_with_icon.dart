import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyElevatedIconButton extends StatelessWidget {
  String label;
  String assetIcon;
  VoidCallback onPressed;

  MyElevatedIconButton({
    Key? key,
    required this.onPressed,
    required this.assetIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(assetIcon),
      label: MyTextRegular(
        text:label,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
          primary: MyColors.blue,
          padding: MyEdgeInsets.symmetric(h: 36.0, v: 16.0),
          elevation: 0.0),
    );
  }
}
