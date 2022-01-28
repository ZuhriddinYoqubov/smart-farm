import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/bottom/bottom_sheet_with_credir_card.dart';
import 'package:smartfarm/widgets/text/my_text_medium.dart';

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
          // USER INFO TITLE SECTION
          buildListTile(),
          Padding(
            padding: MyEdgeInsets.only(left: 15.0, right: 15, top: 185),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // DEPOZIT SECTION
                    buildOutlinedButton(
                      onPressed: () {
                        showModalBottomSheet( 
                            context: context,
                            builder: (BuildContext context) =>
                                BottomSheetWithCreditCard());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(MyAssetIcons.card, width: getUniqueW(22)),
                          SizedBox(height: getUniqueH(20)),
                          MyTextMedium('Depozit', size: 16),
                        ],
                      ),
                      vPadding: 15,
                      hPadding: 15,
                      width: 155,
                      height: 92,
                    ),

                    // CASH HISTORY SECTION
                    buildOutlinedButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(MyAssetIcons.oclock,
                              width: getUniqueW(22)),
                          SizedBox(height: getUniqueH(20)),
                          MyTextMedium('Xaridlar tarixi', size: 16),
                        ],
                      ),
                      vPadding: 15,
                      hPadding: 15,
                      width: 155,
                      height: 92,
                    ),
                  ],
                ),
                MySizedBox(height: 20),

                // UPDATE PROFILE SECTION
                buildOutlinedButton(
                    onPressed: () {},
                    child: MyTextMedium(
                      'Profilni tahrirlash',
                      size: 16,
                    ),
                    vPadding: 18,
                    hPadding: 100),
                MySizedBox(height: 20),

                // CHANGE LANGUAGE SECTION
                buildOutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        MyAssetIcons.globe,
                        width: getUniqueW(24),
                      ),
                      MySizedBox(width: 15),
                      MyTextMedium(
                        "Tilni o'zgartirish",
                        size: 16,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        MyAssetIcons.right,
                        width: getUniqueW(24),
                      ),
                    ],
                  ),
                  vPadding: 25,
                  hPadding: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOutlinedButton({
    required Widget child,
    required VoidCallback onPressed,
    required double vPadding,
    required double hPadding,
    double height = 0,
    double width = 0,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: MyEdgeInsets.symmetric(v: vPadding, h: hPadding),
        minimumSize: Size(getUniqueW(width), getUniqueH(height)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getUniqueW(10),
          ),
        ),
      ),
    );
  }

  Widget buildListTile() {
    return SafeArea(
      child: Container(
        margin: MyEdgeInsets.only(left: 15.0, top: 30, right: 15),
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
    );
  }
}
