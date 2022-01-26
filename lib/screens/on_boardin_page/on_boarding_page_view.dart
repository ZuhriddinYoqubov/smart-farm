import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_asset_images.dart';
import 'package:smartfarm/screens/on_boardin_page/on_boarding_page_cubit.dart';
import 'package:smartfarm/widgets/welcomescreen.dart';

class OnBoardingPageView extends StatelessWidget {
  List<PageData> pageData = [
    PageData('Fresh Food', 'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
        MyAssetsImagestwo.cows),
    PageData('Fast Delivery', "Ularni o'z\nnazoratingiz ostida\nboqing",
        MyAssetsImagestwo.sheeps),
    PageData('Easy Payment', 'Jarayonni\nreal-time kuzatib\nboring',
        MyAssetsImagestwo.chickens)
  ];
  @override
  int indx = 0;
  Widget build(BuildContext context) {
    var _contextWatch = context.watch<OnBoardingPageCubit>();
    var _contextRead = context.read<OnBoardingPageCubit>();
    return BlocProvider(
      create: (context) => OnBoardingPageCubit(),
      child: BlocBuilder<OnBoardingPageCubit, OnBoardingPageState>(
          builder: (context, state) {
        var _contextWatch = context.watch<OnBoardingPageCubit>();
        var _contextRead = context.read<OnBoardingPageCubit>();
        return buildScaffold(_contextWatch, _contextRead);
      }),
    );
  }

  Scaffold buildScaffold(
      OnBoardingPageCubit _contextRead, OnBoardingPageCubit _contextWatch) {
    return Scaffold(
      body: Container(
        margin: MyEdgeInsets.only(left: 15.0, top: 50.0, right: 15),
        width: SizeConfig.screenWidth,
        height: getUniqueH(348),
        // child: PageView.builder(
        //   physics: const BouncingScrollPhysics(),
        //   onPageChanged: (v) {
        //     _contextRead.changeIndicatorIndex(v);
        //   },
        //   itemCount: _contextWatch.indicatorLength,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.amber,
        //     );
        //   },
        // ),
      ),
    );
  }

  Column buildBody(BuildContext context) {
    return Column(
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
    );
  }
}
