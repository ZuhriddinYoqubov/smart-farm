import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/on_boardin_page/on_boarding_page_view.dart';
import 'package:smartfarm/screens/on_boardin_page/test_on_boarding.dart';

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
            AppLogo(size: 70.0),
            MySizedBox(height: 20.0),
            MyTextSemibold(text: 'SmartFarm', color: MyColors.white),
          ],
        ),
      ),
    );
  }

  void _goTo() {
    Timer(const Duration(seconds: 1), () {
      CustomNavigator().pushReplacement(const TestOnBoardingPage());
    });
  }
}
