import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/home/home_page/home_page_cubit.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child:
          BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
        var _contextWatch = context.watch<HomePageCubit>();
        var _contextRead = context.read<HomePageCubit>();
        return buildScaffold(_contextWatch, _contextRead, context);
      }),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return Align(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FarmDetailPageView(),
              ));
        },
        backgroundColor: MyColors.white,
        child: SvgPicture.asset(MyAssetIcons.plus),
      ),
    );
  }

  Widget buildScaffold(HomePageCubit _contextWatch, HomePageCubit _contextRead,
      BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // PAGE VIEW SECTION
                Container(
                  margin: MyEdgeInsets.only(left: 15.0, top: 50.0, right: 15),
                  width: SizeConfig.screenWidth,
                  height: getUniqueH(348),
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (v) {
                      _contextRead.changeIndicatorIndex(v);
                    },
                    itemCount: _contextWatch.indicatorLength,
                    itemBuilder: (context, index) {
                      return const MyAnimalFeedingInfo();
                    },
                  ),
                ),
                MySizedBox(height: 10.0),
                // PAGE VIEW INDICATOR
                MyPageIndicator(
                    length: _contextWatch.indicatorLength,
                    currentIndex: _contextWatch.indicatorIndex),
                MySizedBox(height: 30.0),
                // FLOATTING ACTION BUTTON
                _buildFloatingActionButton(context),
                MySizedBox(height: 20.0),
                Divider(
                  thickness: getUniqueH(1.0),
                  color: MyColors.lightGrey,
                  height: getUniqueH(5.0),
                ),
                // FARMS SECTIONS
                Padding(
                  padding: MyEdgeInsets.all(15),
                  child: MyTextBold(
                      text: 'Fermalar', size: 20.0, color: MyColors.black),
                ),
              ],
            ),
          ),
          // GRID VIEW SECTION
          SliverPadding(
            padding: MyEdgeInsets.only(left: 15, right: 15, bottom: 15),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: getUniqueW(10),
                  mainAxisSpacing: getUniqueH(10),
                  childAspectRatio: 1.23),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  color: Colors.amber,
                  height: getUniqueH(130.0),
                ),
                childCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}