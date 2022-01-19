import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/asset_icons.dart';
import 'package:smartfarm/core/constants/const_colors.dart';
import 'package:smartfarm/widgets/animal_buttons.dart';
class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);
//dsanasksnljadsadsada
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
         AnimalButtons(img: AnimalIcons.chicken,text: "flutter")
        ],
      ),
    );
  }
}
