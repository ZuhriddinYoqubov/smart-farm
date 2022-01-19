import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/core/constants/my_colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({Key? key}) : super(key: key);

  // BloC qo'shilsa olib tashlanadi.
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        _setItem(MyAssetIcons.home, 0),
        _setItem(MyAssetIcons.search, 1),
        _setItem(MyAssetIcons.calendar, 2),
        _setItem(MyAssetIcons.settings, 4),
      ],
      onTap: (i) {
        _currentIndex = i;
      },
    );
  }

  BottomNavigationBarItem _setItem(String assetIcon, int index) =>
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          assetIcon,
          height: getUniqueH(20.0),
          width: getUniqueW(20.0),
          color: _currentIndex == index ? MyColors.primary : MyColors.grey,
        ),
      );
}
