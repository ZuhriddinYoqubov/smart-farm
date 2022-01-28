import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class DepozitPageView extends StatelessWidget {
  const DepozitPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: MyTextSemibold(text: AppStrings.depozit),
      backgroundColor: MyColors.white,
      elevation: MyAppSize.s10,
    ),
        body: Padding(
          padding: MyEdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
          child: MyCreditCard()
        ));
  }
}


