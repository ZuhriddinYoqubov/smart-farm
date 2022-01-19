import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/asset_icons.dart';
import 'package:smartfarm/core/constants/const_colors.dart';

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
        _setItem(AssetIcons.home, 0),
        _setItem(AssetIcons.search, 1),
        _setItem(AssetIcons.calendar, 2),
        _setItem(AssetIcons.settings, 4),
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
          color: _currentIndex == index ? primary : grey,
        ),
      );
}
