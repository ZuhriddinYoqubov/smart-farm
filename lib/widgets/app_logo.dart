import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      MyAssetIcons.logo,
      height: getUniqueH(25.0),
      width: getUniqueW(25.0),
    );
  }
}
