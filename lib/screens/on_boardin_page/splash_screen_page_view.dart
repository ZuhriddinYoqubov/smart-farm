import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    CustomNavigator().init(context);
    _goTo();
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SvgPicture.asset(
                MyAssetIcons.logo,
                height: getUniqueH(70),
                width: getUniqueW(70),
              ),
            MySizedBox(height: 20.0),
            MyTextSemibold(text: 'SmartFarm', color: MyColors.white),
          ],
        ),
      ),
    );
  }

  void _goTo() {
    Timer(const Duration(seconds: 1), () {
      CustomNavigator().pushReplacement(OnBoardingPageView());
    });
  }
}
