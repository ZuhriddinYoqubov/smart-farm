import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/widgets/inputs/search_text_field.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';
import 'package:smartfarm/widgets/buttons/my_elevated_button.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: getUniqueH(9.98),
          left: getUniqueW(15.0),
          right: getUniqueW(15.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: getUniqueH(45.0),
                  width: getUniqueW(275.0),
                  child: SearchField(),
                ),
                SizedBox(width: getUniqueW(10.0)),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: getUniqueH(45.0),
                    width: getUniqueW(45.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: MyColors.lighGrey,
                    ),
                    child: SvgPicture.asset(
                      MyAssetIcons.setting,
                      color: MyColors.black,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(height: getUniqueH(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextBold(
                  text: "Fermalar",
                  color: MyColors.black,
                  size: 19.9,
                ),
                MyTextRegular(
                  text: "Barchasi",
                  color: MyColors.black,
                  size: 14.0,
                ),
              ],
            ),
            SizedBox(height: getUniqueH(10.0)),
            FarmInfoCard(),
            SizedBox(height: getUniqueH(15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextBold(
                  text: "Hayvonlar",
                  color: MyColors.black,
                  size: 19.9,
                ),
                MyTextRegular(
                  text: "Barchasi",
                  color: MyColors.black,
                  size: 14.0,
                ),
              ],
            ),
            SizedBox(height: getUniqueH(10.0)),
            Container(
              height: getUniqueH(100.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  right: getUniqueW(10.0),
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: AnimalButtons(
                      img: Links.cow,
                      text: "Sigir",
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: getUniqueH(15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyTextBold(
                  text: "Mahsulotlar",
                  color: MyColors.black,
                  size: 19.9,
                ),
              ],
            ),
            SizedBox(height: getUniqueH(10.0)),
            Container(
              height: getUniqueH(100.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: ProductsCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
