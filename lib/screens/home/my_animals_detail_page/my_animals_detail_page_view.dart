import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/home/nutrition_history_page/nutrition_history_page_view.dart';

class MyAnimalsDetailPageView extends StatelessWidget {
  const MyAnimalsDetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      //appBar: appbar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SafeArea(
                  child: Container(
                    height: getUniqueH(300),
                    color: Colors.amber,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -1,
                  child: Container(
                    height: getUniqueH(13),
                    decoration: BoxDecoration(
                      color: MyColors.white,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          getUniqueW(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            buildTitleSection(),
            Divider(thickness: getUniqueH(1.0), color: MyColors.lightGrey),
            Padding(
              padding: EdgeInsets.fromLTRB(
                getUniqueW(15),
                getUniqueH(20),
                getUniqueW(15),
                getUniqueH(5),
              ),
              child: MyTextBold(
                text: 'Ovqatlanish tarixi',
                size: 18.0,
                color: Colors.black,
              ),
            ),
            buildNutrionHistoryItem(),
            buildNutrionHistoryItem(),
            buildNutrionHistoryItem(),
            Padding(
              padding: MyEdgeInsets.symmetric(v: 30, h: 83.5),
              child: MyButton(onPressed: (){}, label: "Ko'proq ko'rish"),
            )
            // buildNutrionHistoryItem(),
          ],
        ),
      ),
    );
  }

  Widget buildNutrionHistoryItem() {
    return Padding(
          padding: EdgeInsets.fromLTRB(
            getUniqueW(15),
            getUniqueH(15),
            getUniqueW(15),
            getUniqueH(0),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyTextRegular(
                        text: 'Ovqatlanish tarixi',
                        size: 16.0,
                        color: MyColors.black,
                      ),
                      SizedBox(height: getUniqueH(5)),
                       MyTextRegular(
                        text: '1kg · 15 000 sum',
                        size: 12.0,
                        color: MyColors.black,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyTextRegular(
                        text: '27.09.2021',
                        size: 12.0,
                        color: MyColors.grey,
                      ),
                      SizedBox(height: getUniqueH(5)),
                       MyTextRegular(
                        text: '14:16',
                        size: 12.0,
                        color: MyColors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getUniqueH(15)),
        Divider(thickness: getUniqueH(1.0), color: MyColors.lightGrey),

            ],
          ),
        );
  }

  Widget buildTitleSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getUniqueW(15),
        getUniqueH(10),
        getUniqueW(15),
        getUniqueH(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextBold(
                text: 'Broller tovuq',
                size: 18.0,
                color: Colors.black,
              ),
              MySizedBox(height: 10.0),
              MyTextBold(text: 'Izoh', color: Colors.black),
              MySizedBox(height: 5.0),
              SizedBox(
                  width: getUniqueW(236),
                  child: MyTextRegular(
                    text: AppStrings.shuKunlarda,
                    maxLines: 4,
                  ))
            ],
          ),
          Container(
            width: getUniqueW(75.0),
            alignment: Alignment.center,
            height: getUniqueH(108.0),
            decoration: MyDecoration.circular(color: MyColors.primary),
            child: MyTextBold(text: '55%', color: MyColors.white, size: 16.0),
          )
        ],
      ),
    );
  }

  Widget appbar(BuildContext context) {
    return AppBar(
      title: const Text('MyAnimalsDetailPage'),
      actions: [buildButtonKoproqKorish(context)],
    );
  }

  Widget buildButtonKoproqKorish(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NutritionHistoryPageView(),
              ));
        },
        child: const Text("Ko'proq ko'rish"));
  }
}
