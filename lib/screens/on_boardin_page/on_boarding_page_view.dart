import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/on_boardin_page/on_boarding_page_cubit.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({Key? key}) : super(key: key);

  final List<String> pageTitle = [
    'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
    "Ularni o'z\nnazoratingiz ostida\nboqing",
    'Jarayonni\nreal-time kuzatib\nboring',
  ];

  late OnBoardingPageCubit _cubit;
  late OnBoardingPageCubit _read;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingPageCubit(),
      child: BlocBuilder<OnBoardingPageCubit, OnBoardingPageState>(
        builder: (context, state) {
          // int _currentPage = context.watch<OnBoardingPageCubit>().currentPage;
          // int _pagesLength = context.watch<OnBoardingPageCubit>().pagesLength;
          // var _controller = context.watch<OnBoardingPageCubit>().controller;
          // var _contextRead = context.read<OnBoardingPageCubit>();
          _cubit = context.watch();
          _read = context.read();
          return buildScaffold();
        },
      ),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenWidth / 360 * 350 + getUniqueH(120),
            child: Flexible(
              child: PageView.builder(
                controller: _cubit.controller,
                physics: const BouncingScrollPhysics(),
                onPageChanged: _cubit.changeCurrentPage,
                itemCount: _cubit.pagesLength,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        MyAssetImages.cows,
                        fit: BoxFit.fitWidth,
                        width: SizeConfig.screenWidth,
                      ),
                      Container(
                        height: getUniqueH(120),
                        padding: MyEdgeInsets.only(left: 30, bottom: 30),
                        child: MyTextBold(
                            text: pageTitle[_cubit.currentPage], size: 30),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          PageIndicator(
            length: _cubit.pagesLength,
            currentIndex: _cubit.currentPage,
            color: MyColors.primary,
          ),
          SizedBox(height: getUniqueH(37)),
          Center(
            child: MyButton(
              onPressed: _cubit.currentPage != 2
                  ? _cubit.onNextButtonPressed
                  : _cubit.onSkipButtonPressed,
              label: 'Keyingi',
            ),
          ),
        ],
      ),
    );
  }
}
