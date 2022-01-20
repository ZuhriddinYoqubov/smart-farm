import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/widgets/container_with_opacity.dart';
import 'package:smartfarm/widgets/my_decoration.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';

class AnimalFeedingInfo extends StatelessWidget {
  const AnimalFeedingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(getUniqueW(10.0)),
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
                    child: SvgPicture.asset(MyAssetIcons.medicationBox),
                  ),
                ),
                Positioned(
                    bottom: getUniqueH(7.0),
                    left: getUniqueW(10.0),
                    child: ContainerWithOpacity(
                      vPadding: 7.0,
                      hPadding: 12.0,
                      child: MyTextBold(text: "5 dona",size: 12.0),
                    ))
              ],
            ),
          ],
        )
      ],
    );
  }
}
