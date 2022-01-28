import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/bottom/bottom_sheet_with_credir_card.dart';

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Container(
              margin: MyEdgeInsets.only(left: 15.0, top: 30, right: 15),
              color: Colors.amber,
              height: getUniqueH(60),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getUniqueH(60),
                    width: getUniqueH(60),
                    margin: MyEdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getUniqueH(30)),
                        color: MyColors.grey),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextBold(text: 'Abdumalik Kalandarov', size: 18),
                      SizedBox(height: getUniqueH(8.0)),
                      MyTextRegular(text: '+998 90 123 45 67', size: 14),
                    ],
                  )
                ],
              ),
            ),
          ),
          BottomSheetWithCreditCard()
        ],
      ),
    );
  }
}
