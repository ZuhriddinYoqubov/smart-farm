import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/models/on_boarding_model.dart';

class TestOnBoardingPage extends StatefulWidget {
  const TestOnBoardingPage({Key? key}) : super(key: key);

  @override
  _TestOnBoardingPageState createState() => _TestOnBoardingPageState();
}

class _TestOnBoardingPageState extends State<TestOnBoardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pageViewBody(),
          _buildPageIndicator(),
          _setPositioned(
            bottom: 120.0,
            child: MyButton(onPressed: () {}, label: 'Keyigi'),
          )
        ],
      ),
    );
  }

  PageIndicator _buildPageIndicator() {
    return PageIndicator(
      length: 3,
      currentIndex: _currentIndex,
      color: MyColors.primary,
    );
  }

  PageView _pageViewBody() => PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: List.generate(_model.length, (index) {
          OnBoardingModel obm = _model[index];
          return MySizedBox(
            height: 640.0,
            width: 360.0,
            child: Column(
              children: [
                Image.asset(obm.image, fit: BoxFit.cover),
                MyTextBold(
                  text: obm.title,
                  size: 24.0,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }),
      );

  Positioned _setPositioned({
    required Widget child,
    double? top,
    double? bottom,
    double? right,
    double? left,
  }) =>
      Positioned(
        child: child,
        top: top,
        bottom: bottom,
        right: right,
        left: left,
      );

  final List<OnBoardingModel> _model = [
    OnBoardingModel(
      'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
      MyAssetImages.cows,
    ),
    OnBoardingModel(
      'Ularni o\'z\nnazoratingiz ostida\nboqing',
      MyAssetImages.chickens,
    ),
    OnBoardingModel(
      'Jarayonni\nreal-time kuzatib\nboring',
      MyAssetImages.cows,
    ),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
