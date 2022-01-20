import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/const_colors.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';
import 'package:smartfarm/widgets/my_text_extrabold.dart';
import 'package:smartfarm/widgets/my_text_regular.dart';
import 'package:smartfarm/widgets/my_text_semibold.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          MyTextRegular(
              text:
                  "Shu kunlari infektsiya tarqaldi va sizning tovuqlaringizga ham bu infektsiya yuqti, shoshilinch ravishda dori sotib olishingis kerak!!"),
          MyTextSemibold(text: "600"),
          MyTextBold(
            text: "Sevimli hayvonlaringizni onlayn sotib oling",
            color: red,
          ),
          MyTextExtrabold(text: "800"),
        ],
      ),
    );
  }
}
