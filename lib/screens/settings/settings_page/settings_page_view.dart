import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/settings/language_change_page/language_change_page_view.dart';
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
                    MyOutlinedButton(
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
                      fixedSize: Size(getUniqueW(155), getUniqueH(92)),
                    
                    ),

                    // CASH HISTORY SECTION
                    MyOutlinedButton(
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
                      fixedSize: Size(getUniqueW(155), getUniqueH(92)),
                    ),
                  ],
                ),
                MySizedBox(height: 20),

                // UPDATE PROFILE SECTION
                MyOutlinedButton(
                    onPressed: () {},
                    child: MyTextMedium(
                      'Profilni tahrirlash',
                      size: 16,
                    ),
                    vPadding: 18,
                    hPadding: 100,
                    fixedSize: Size(getUniqueW(330), getUniqueH(52)),),
                MySizedBox(height: 20),

                // CHANGE LANGUAGE SECTION
                MyOutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageChangePageView(),),);
                  },
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
                  fixedSize: Size(getUniqueW(330), getUniqueH(74)),
                ),
              ],
            ),
          ),
        ],
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
