import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimalFeedingInfo(),
          ],
        ),
      ),
    );
  }
}
