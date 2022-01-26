import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/widgets/inputs/search_text_field.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';
import 'package:smartfarm/widgets/buttons/my_elevated_button.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getUniqueH(9.98),
              left: getUniqueW(15.0),
              right: getUniqueW(15.0),
            ),
            child: Row(
              children: [
                SearchField(),
                SizedBox(width: getUniqueW(10.0)),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: getUniqueH(45.0),
                    width: getUniqueW(45.0),
                    color: MyColors.green,
                    child: SvgPicture.asset(
                      'assets/icons/setting.svg',
                      // MyAssetIcons.setting,
                      color: MyColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
