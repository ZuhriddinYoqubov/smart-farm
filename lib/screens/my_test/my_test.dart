import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/core/constants/my_asset_images.dart';
import 'package:smartfarm/widgets/my_farm_buttons.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MyFarmButtonsthreeBox(
        index: 10,
        img: MyAnimalsImage.cow,
        name: "Cow",
        info: "Cow best top nuber one",
        product: "+10",
        product1: "EXAMPLE",
        product2: 'TEST',
      )),
    );
  }
}
