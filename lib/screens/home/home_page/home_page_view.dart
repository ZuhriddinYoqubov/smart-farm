import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 15.0, v: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AnimalFeedingInfo(),
            MySizedBox(height: 10.0),
            PageIndicator(length: 3, currentIndex: 0),
            MySizedBox(height: 30.0),
            _buildFloatingActionButton(),
            MySizedBox(height: 20.0),
            Divider(
              thickness: getUniqueH(1.0),
              color: MyColors.lightGrey,
              height: getUniqueH(40.0),
            ),
            MyTextBold(text: 'Fermalar', size: 20.0, color: MyColors.black)
          ],
        ),
      ),
    );
  }

  Align _buildFloatingActionButton() {
    return Align(
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MyColors.white,
        child: SvgPicture.asset(MyAssetIcons.plus),
      ),
    );
  }
}
