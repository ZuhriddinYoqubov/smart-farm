import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/screens/home/my_animals_detail_page/my_animals_detail_page_view.dart';
import 'package:smartfarm/widgets/container_with_opacity.dart';
import 'package:smartfarm/widgets/my_outlined_button.dart';
import 'package:smartfarm/widgets/my_outlined_button_text.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';

class AnimalFeedingInfo extends StatelessWidget {
  const AnimalFeedingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //kdflksdlkfs
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getUniqueW(10.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: 'https://source.unsplash.com/random/7',
                    height: getUniqueH(190.0),
                    width: getUniqueW(230.0),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: getUniqueH(-8.0),
                  right: getUniqueW(-8.0),
                  child: FloatingActionButton(
                    elevation: 0.0,
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    child: SvgPicture.asset(
                      MyAssetIcons.medicationBox,
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
                    // onPressed: () {
                    //   showBottomSheet(context: context, builder: _buildBottomSheet );
                    // },
                    // child: SvgPicture.asset(MyAssetIcons.medicationBox),
                //   ),
                // ),
                Positioned(
                    bottom: getUniqueH(7.0),
                    left: getUniqueW(10.0),
                    child: ContainerWithOpacity(
                      vPadding: 7.0,
                      hPadding: 12.0,
                      child: MyTextBold(text: "5 dona", size: 12.0),
                    ))
              ],
            ),
            SizedBox(
              height: getUniqueH(190.0),
              child: MyOutlinedButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    SvgPicture.asset(MyAssetIcons.corn),
                    const Spacer(),
                    MyOutlinedButtonText(
                      onPressed: () {},
                      label: '12 %',
                      color: MyColors.red,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: getUniqueH(15.0)),
        MyOutlinedButton(
            padding: 10.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAnimalsDetailPageView() ));
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
                      MyTextBold(text: 'Izoh', color: Colors.black),
                      MyTextBold(
                          text:
                              'Shu kunlari infektsiya tarqaldi va sizning tovuqlaringiz ham...')
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
  Widget _buildBottomSheet(BuildContext context){
    return Container(height: 400, color: MyColors.primary,);
  }
}
