import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                      text("Fermalar"),
                      InkWell(
                        child: barchasi(),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getUniqueH(10.0)),
                  FarmInfoCard(),
                  SizedBox(height: getUniqueH(15.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text("Hayvonlar"),
                      InkWell(
                        child: barchasi(),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getUniqueH(10.0)),
                ],
              ),
            ),
            Container(
              height: getUniqueH(100.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: getUniqueW(15.0),
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
            Padding(
              padding: EdgeInsets.only(
                top: getUniqueH(15.0),
                left: getUniqueW(15.0),
                right: getUniqueW(235.0),
                bottom: getUniqueH(10.0),
              ),
              child: text("Mahsulotlar"),
            ),
            Container(
              height: getUniqueH(100.0),
              child: ListView.builder(
                padding: EdgeInsets.only(
                  left: getUniqueW(15.0),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: ProductsCard(),
                  );
                },
              ),
    CustomNavigator().init(context);
    return SafeArea(
      child: Column(
        children: [
          MySizedBox(height: 18.0),
          _showSearchField(),
          _setCategoryLabel('Fermalar'),
          MySizedBox(height: 2.0),
          const FarmInfoCard(),
          MySizedBox(height: 7.0),
          _setCategoryLabel('Hayvonlar'),
          MySizedBox(height: 10.0),
          SizedBox(
            height: getUniqueW(100.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: MyEdgeInsets.symmetric(h: 10.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AnimalButtons(
                  img: MyAnimalsImage.cow,
                  text: "Sigir",
                );
              },

              separatorBuilder: (ctx, i) {
                return MySizedBox(width: 10.0);
              },
            ),
          ),
          MySizedBox(height: 15.0),
          _setCategoryLabel('Mahsulotlar'),
          // MySizedBox(height: 10.0),
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

  Padding _showSearchField() {
    return Padding(
      padding: MyEdgeInsets.symmetric(h: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MySizedBox(height: 45.0, width: 275.0, child: SearchField()),
          _showFilterButton(),
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
  MyTextBold text(name) {
    return MyTextBold(
      text: name,
      color: MyColors.black,
      size: 19.9,
    );
  }

  MyTextRegular barchasi() {
    return MyTextRegular(
      text: "Barchasi",
      color: MyColors.black,
      size: 14.0,
    );
  }
  Padding _setCategoryLabel(String category) => Padding(
        padding: MyEdgeInsets.symmetric(h: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextBold(text: category, size: 20.0),
            MyTextButton(
                onPressed: () {
                  CustomNavigator()
                      .push(AllCategoryPageView(categoryName: category));
                },
                label: 'Barchasi'),
          ],
        ),
      );
}
