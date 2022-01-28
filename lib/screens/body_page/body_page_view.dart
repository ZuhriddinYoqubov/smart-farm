import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/body_page/body_page_cubit.dart';

class BodyPageView extends StatelessWidget {
  BodyPageView({Key? key}) : super(key: key);
  late BodyPageCubit _pageCubit;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => BodyPageCubit(),
      child: BlocBuilder<BodyPageCubit, BodyPageState>(
        builder: (context, state) {
          _pageCubit = context.watch<BodyPageCubit>();
          return buildScaffold(_pageCubit);
        },
      ),
    );
  }

  Scaffold buildScaffold(BodyPageCubit _contextWatch) {
    return Scaffold(
      body: _contextWatch.pages[_contextWatch.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _setItem(MyAssetIcons.home, 0),
          _setItem(MyAssetIcons.search, 1),
          _setItem(MyAssetIcons.calendar, 2),
          _setItem(MyAssetIcons.settings, 3),
        ],
        onTap: _contextWatch.changePage,
      ),
    );
  }

  BottomNavigationBarItem _setItem(String assetIcon, int index) =>
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          assetIcon,
          height: getUniqueH(20.0),
          width: getUniqueW(20.0),
          color: _pageCubit.currentIndex == index
              ? MyColors.primary
              : MyColors.grey,
        ),
      );
}
