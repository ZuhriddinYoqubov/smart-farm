import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class FarmInfoCard extends StatelessWidget {
  const FarmInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(150.0),
      width: getUniqueW(330.0),
      decoration: MyDecoration.withImage(
        imageUrl: Links.cow,
      ),
      padding: MyEdgeInsets.symmetric(
        h: getUniqueW(10.0),
        v: getUniqueH(13.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Chip(
            padding: MyEdgeInsets.symmetric(
              h: getUniqueW(10.0),
              v: getUniqueH(10.0),
            ),
            label: MyTextRegular(
              text: '172',
              color: Colors.white,
              size: 12.0,
            ),
            backgroundColor: MyColors.green,
            shape: MyShape.circular(
              radius: getUniqueW(58.0),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: MyTextBold(
              text: 'Ina ferma',
              size: 16.0,
              color: MyColors.white,
            ),
            subtitle: MyTextRegular(
              text: 'Eng yaxshi fermer xo\'jaliklaridan...',
              maxLines: 1,
              size: 10.0,
              color: MyColors.white,
            ),
            trailing: Wrap(
              spacing: getUniqueW(5.0),
              children: [
                _setChip('Sigir'),
                _setChip('Ot'),
                _setChip('12+'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Chip _setChip(String label) => Chip(
        label: MyTextRegular(
          text: label,
          size: 12.0,
          color: MyColors.white,
        ),
        backgroundColor: MyColors.primary,
        padding: MyEdgeInsets.symmetric(
          h: getUniqueW(10.0),
          v: getUniqueH(4.0),
        ),
        shape: MyShape.circular(radius: 6.0),
      );
}
