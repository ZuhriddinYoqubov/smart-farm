import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(100.0),
      width: getUniqueW(140.0),
      alignment: Alignment.bottomRight,
      decoration: MyDecoration.withImage(imageUrl: Links.cow),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(MyAssetIcons.rectangle),
          Positioned(
            bottom: getUniqueH(5.0),
            child: MyTextBold(
              text: 'Qo\'y',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
