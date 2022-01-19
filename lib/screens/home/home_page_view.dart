import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/const_colors.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          MyTextBold(
            text: "Sevimli hayvonlaringizni onlayn sotib oling",
            color: Colors.red,
            // size: 40.0,
          )
        ],
      ),
    );
  }
}
