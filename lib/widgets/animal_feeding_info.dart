import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/screens/home/my_animals_detail_page/my_animals_detail_page_view.dart';

class AnimalFeedingInfo extends StatelessWidget {
  const AnimalFeedingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getUniqueW(10.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: 'https://source.unsplash.com/random/6',
                    height: getUniqueH(190.0),
                    width: getUniqueW(230.0),
                    fit: BoxFit.cover,
                  ),
                ),
                // MEDICAL BUTTON
                Positioned(
                  top: getUniqueH(-8.0),
                  right: getUniqueW(-8.0),
                  child: FloatingActionButton(
                    elevation: 0.0,
                    backgroundColor: Colors.red,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (_) => ProductBuyingBottom(),
                      );
                    },
                    child: SvgPicture.asset(
                      MyAssetIcons.medicationBox,
                    ),
                  ),
                ),
                //  ANIMALS COUNT INFO
                Positioned(
                  bottom: getUniqueH(7.0),
                  left: getUniqueW(10.0),
                  child: ContainerWithOpacity(
                    vPadding: 7.0,
                    hPadding: 12.0,
                    child: MyTextBold(
                      text: "5 dona",
                      size: 12.0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: getUniqueH(7.0),
                  left: getUniqueW(10.0),
                  child: ContainerWithOpacity(
                    vPadding: 7.0,
                    hPadding: 12.0,
                    child: MyTextBold(
                      text: "5 dona",
                      size: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getUniqueH(190.0),
              width: getUniqueW(85.0),
              child: MyOutlinedButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (_) => ProductBuyingBottom(),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    //  CORN BUTTON
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (_) => ProductBuyingBottom(),
                        );
                      },
                      child: SvgPicture.asset(MyAssetIcons.corn),
                    ),
                    const Spacer(),
                    MyOutlinedButtonText(
                      onPressed: () {},
                      label: '12 %',
                      color: MyColors.red,
                    ),
                    _setFoodPercent(),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getUniqueH(15.0)),
        MyOutlinedButton(
          padding: 10.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyAnimalsDetailPageView(),
              ),
            );
          },
          child: Row(
            children: [
              MySizedBox(height: 15.0),
              _commentButton(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _commentButton(BuildContext context) {
    return MyOutlinedButton(
      padding: 10.0,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyAnimalsDetailPageView(),
          ),
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
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
                MyTextRegular(
                  text: AppStrings.shuKunlarda,
                  maxLines: 2,
                )
              ],
            ),
          ),
          _showAnimalPercent(),
        ],
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Container(
      height: 400,
      color: MyColors.primary,
    );
  }

  Widget _showAnimalPercent() => Container(
        width: getUniqueW(75.0),
        alignment: Alignment.center,
        height: getUniqueH(108.0),
        decoration: MyDecoration.circular(
          color: MyColors.primary,
        ),
        child: MyTextBold(
          text: '55%',
          color: MyColors.white,
          size: 16.0,
        ),
      );

  Widget _setFoodPercent() => Container(
        padding: MyEdgeInsets.symmetric(v: 6),
        width: getUniqueW(71.0),
        alignment: Alignment.center,
        child: MyTextRegular(
          text: '12%',
          color: MyColors.red,
        ),
        decoration: MyDecoration.circular(
          radius: 7.0,
          border: Border.all(
            color: MyColors.red,
            width: getUniqueW(1.0),
          ),
        ),
      );
}
