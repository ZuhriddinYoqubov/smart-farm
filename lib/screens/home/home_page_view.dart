import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/const_colors.dart';
import 'package:smartfarm/widgets/my_bottom_nav_bar.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';
import 'package:smartfarm/widgets/my_elevated_button.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';
import 'package:smartfarm/widgets/my_text_form_tield.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           MyButton(onPressed: (){}, label: 'Ro’yxatdan o’tish')

          ],
        ),
      ),
    );
  }
}
