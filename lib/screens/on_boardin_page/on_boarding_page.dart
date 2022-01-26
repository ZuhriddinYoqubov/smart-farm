import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/screens/auth/sign_up/sign_up_view.dart';
import 'package:smartfarm/widgets/welcomescreen.dart';

class OnBoardingPage extends StatelessWidget {
  List<PageData> pageData = [
    PageData(
        'Fresh Food',
        'Make a beautiful clean and fully functional onboarding screen layout in Android StudioIn this part we are going to setup the viewpager intro slider.Illustra...',
        'assets/logo.png'),
    PageData(
        'Fast Delivery',
        'Make a beautiful clean and fully functional onboarding screen layout in Android StudioIn this part we are going to setup the viewpager intro slider.Illustra...',
        ''),
    PageData(
        'Easy Payment',
        'Make a beautiful clean and fully functional onboarding screen layout in Android StudioIn this part we are going to setup the viewpager intro slider.Illustra...',
        '')
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
