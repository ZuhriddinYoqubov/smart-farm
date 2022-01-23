import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: MyEdgeInsets.symmetric(h: 16.0),
        child: CityNameTable(),
      ),
    );
  }
}
