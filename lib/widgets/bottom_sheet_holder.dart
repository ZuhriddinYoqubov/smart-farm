import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class BottomSheetHolder extends StatelessWidget {
  const BottomSheetHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MyEdgeInsets.symmetric(v: 10.0),
      height: getUniqueH(4.0),
      width: getUniqueW(25.0),
      decoration: MyDecoration.circular(
        color: MyColors.lightGrey,
        radius: 28.0,
      ),
    );
  }
}
