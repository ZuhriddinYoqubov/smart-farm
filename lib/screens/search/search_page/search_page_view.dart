import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          MySizedBox(height: 10.0),
          _setWidgetWithPadding(
            padding: 15.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MySizedBox(height: 45.0, width: 275.0, child: SearchField()),
                _showFilterButton(),
              ],
            ),
          ),
          MySizedBox(height: 20.0),
          _setCategoryLabel('Fermalar'),
          MySizedBox(height: 10.0),
          const FarmInfoCard(),
          MySizedBox(height: 15.0),
          _setCategoryLabel('Hayvonlar'),
          MySizedBox(height: 10.0),
          SizedBox(
            height: getUniqueW(100.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: MyEdgeInsets.symmetric(h: 10.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AnimalButtons(
                  img: MyAnimalsImage.cow,
                  text: "Sigir",
                );
              },
            ),
          ),
          MySizedBox(height: 15.0),
          _setWidgetWithPadding(
            padding: 15.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyTextBold(
                  text: "Mahsulotlar",
                  color: MyColors.black,
                  size: 19.9,
                ),
              ],
            ),
          ),
          MySizedBox(height: 10.0),
          SizedBox(
            height: getUniqueH(100.0),
            child: ListView.builder(
              padding: MyEdgeInsets.symmetric(h: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: MyEdgeInsets.symmetric(h: 5.0),
                  child: const ProductsCard(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  InkWell _showFilterButton() {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: getUniqueH(40.0),
        width: getUniqueH(40.0),
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
    );
  }

  Padding _setWidgetWithPadding(
          {required Widget child, double padding = 0.0}) =>
      Padding(
        child: child,
        padding: MyEdgeInsets.symmetric(h: padding),
      );

  Padding _setCategoryLabel(String category) => Padding(
        padding: MyEdgeInsets.symmetric(h: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextBold(text: category, size: 20.0),
            MyTextButton(onPressed: () {}, label: 'Barchasi'),
          ],
        ),
      );
}
