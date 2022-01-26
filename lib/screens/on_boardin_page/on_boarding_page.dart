import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_asset_images.dart';
import 'package:smartfarm/screens/auth/sign_up/sign_up_view.dart';
import 'package:smartfarm/widgets/welcomescreen.dart';

class OnBoardingPage extends StatelessWidget {
  List<PageData> pageData = [
    PageData(
        'Fresh Food',
        'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
         MyAssetsImagestwo.cows),
    PageData(
        'Fast Delivery',
        "Ularni o'z\nnazoratingiz ostida\nboqing",
        MyAssetsImagestwo.sheeps),
    PageData(
        'Easy Payment',
        'Jarayonni\nreal-time kuzatib\nboring',
        MyAssetsImagestwo.chickens)
  ];
  @override
  int indx = 0;
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getUniqueH(580.0),
            width: MediaQuery.of(context).size.width,
            child: IntroPage(
              indx: indx,
              pageData: pageData,
              indicatorSize: 14,
              activeIndicatorColor: Colors.orange,
              onPageChange: (page) {},
            ),
          ),
        ],
      ),
    );
  }
}
