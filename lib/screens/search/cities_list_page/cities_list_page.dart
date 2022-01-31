import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class CitiesListPage extends StatelessWidget {
  CitiesListPage({Key? key}) : super(key: key);

  List<String> shahar = <String>[
    'Chirchiq',
    'Chinoz',
    'Chorvoq',
    'Buka',
    'Katta Chimyon',
    'Bekobod',
    'Oxangaron',
    'Oxangaron',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MySizedBox(height: getUniqueH(9.98)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MySizedBox(width: getUniqueW(21.0)),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      MyAssetIcons.vector,
                    ),
                  ),
                  MySizedBox(width: getUniqueW(16.0)),
                  Container(
                    // height: getUniqueH(100.0),
                    width: getUniqueW(296.0),
                    child: MySearchTextField(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getUniqueH(20.0),
                  left: getUniqueW(15.0),
                  right: getUniqueW(15.0),
                  bottom: getUniqueH(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextBold(text: "Shaharni tanlang", size: 24.0),
                    TextButton(
                      onPressed: () {},
                      child: MyTextBold(text: "O'chirish", size: 16.0),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 0.0),
              Container(
                height: getUniqueH(350.0),
                width: getUniqueW(360.0),
                padding: EdgeInsets.only(
                  // top: getUniqueH(20.0),
                  left: getUniqueW(15.0),
                  right: getUniqueW(15.0),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: shahar.length,
                  itemBuilder: (BuildContext context, index) {
                    return shaharlar("${shahar[index]}");
                  },
                ),
              ),
              MySizedBox(height: getUniqueH(15.0)),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: getUniqueH(52.0),
                  width: getUniqueW(330.0),
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MyTextRegular(
                    text: "Natijani ko'rsatish",
                    size: getUniqueW(16.0),
                    color: MyColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shaharlar(String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          MySizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextRegular(
                text: text,
                size: 16.0,
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  MyAssetIcons.right,
                ),
              ),
            ],
          ),
          MySizedBox(height: 10.0),
          Divider(thickness: 0.0),
        ],
      ),
    );
  }
}
