import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/my_nutrion_history_item.dart';

class DataEditingPageView extends StatelessWidget {
  const DataEditingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: MyTextSemibold(text: AppStrings.meningMalumotlarim),
          centerTitle: true,
          backgroundColor: MyColors.white,
          elevation: MyAppSize.s10,
        ),
        body: Padding(
          padding: MyEdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: getUniqueW(50), backgroundColor: MyColors.grey),
              SizedBox(width: SizeConfig.screenWidth, height: getUniqueH(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    MyAssetIcons.pen,
                    width: getUniqueW(24),
                  ),
                  MyTextBold(text: "O'zgartirish", size: 12),
                ],
              )
            ],
          ),
        ));
  }
}
