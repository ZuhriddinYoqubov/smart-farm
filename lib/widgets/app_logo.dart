import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AppLogo extends StatelessWidget {
  double size;

  AppLogo({Key? key, this.size = 25.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      MyAssetIcons.logo,
      height: getUniqueH(size),
      width: getUniqueW(size),
    );
  }
}
