import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/on_boardin_page/on_boarding_page_cubit.dart';
import 'package:smartfarm/widgets/welcomescreen.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({Key? key}) : super(key: key);

  List<String> pageTitle = [
    'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
    "Ularni o'z\nnazoratingiz ostida\nboqing",
    'Jarayonni\nreal-time kuzatib\nboring',
  ];

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => OnBoardingPageCubit(),
      child: BlocBuilder<OnBoardingPageCubit, OnBoardingPageState>(
        builder: (context, state) {
          var _contextWatch = context.watch<OnBoardingPageCubit>();
          var _contextRead = context.read<OnBoardingPageCubit>();
          return buildScaffold(_contextWatch, _contextRead);
        },
      ),
    );
  }

  Scaffold buildScaffold(
      OnBoardingPageCubit _contextRead, OnBoardingPageCubit _contextWatch) {
    return Scaffold(
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (v) {
          print(v);
          _contextRead.changeIndicatorIndex(v);
        },
        itemCount: _contextWatch.indicatorLength,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                  child: Image.asset(
                MyAssetImages.cows,
                fit: BoxFit.cover,
                width: SizeConfig.screenWidth,
              )),
              Padding(
                padding: MyEdgeInsets.only(left: 30, bottom: 30),
                child: MyTextBold(text: pageTitle[index], size: 30),
              ),
              PageIndicator(
                length: _contextWatch.indicatorLength,
                currentIndex: _contextWatch.indicatorIndex,
                color: MyColors.primary,
              ),
              SizedBox(height: getUniqueH(37)),
              Center(
                child: MyButton(
                    onPressed: () {
                      if (_contextWatch.indicatorIndex !=
                          _contextWatch.indicatorLength - 1) {
                        _contextRead.changeIndicatorIndex(
                            _contextWatch.indicatorIndex + 1);
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageView(),
                          ),
                        );
                      }
                    },
                    label: 'Keyingi'),
              )
            ],
          );
        },
      ),
    );
  }

  // Column buildBody(BuildContext context) {
  //   return Column(
  //     children: [
  //       SafeArea(
  //           child: Image.asset(
  //         MyAssetImages.chicken,
  //         width: SizeConfig.screenWidth,
  //       )),
  //       Container(
  //         height: getUniqueH(580.0),
  //         width: MediaQuery.of(context).size.width,
  //         child: IntroPage(
  //           indx: indx,
  //           pageData: pageData,
  //           indicatorSize: 14,
  //           activeIndicatorColor: Colors.orange,
  //           onPageChange: (page) {},
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
