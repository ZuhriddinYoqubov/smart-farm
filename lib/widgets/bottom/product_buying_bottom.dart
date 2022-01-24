import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class ProductBuyingBottom extends StatelessWidget {
  const ProductBuyingBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(407.0),
      decoration: MyDecoration.circular(),
      child: Column(
        children: [
          Container(
            padding: MyEdgeInsets.symmetric(h: 15.0, v: 15.0),
            height: getUniqueH(250.0),
            decoration: MyDecoration.withImage(imageUrl: Links.childOfCow),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  elevation: 0.0,
                  mini: true,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.clear_outlined, color: Colors.black),
                  onPressed: () {},
                ),
                Container(
                  decoration: MyDecoration.circular(color: MyColors.glassBlack),
                  child: ListTile(
                    title: MyTextRegular(
                      text: 'Hamyon balansi',
                      size: 12.0,
                      color: Colors.white,
                    ),
                    subtitle: MyTextBold(
                      text: '150 000 sum',
                      color: Colors.white,
                      size: 18.0,
                    ),
                    trailing: SvgPicture.asset(
                      MyAssetIcons.logo,
                      height: getUniqueH(25.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: MyEdgeInsets.symmetric(h: 20, v: 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildMyTextBold("Makkajo'xori"),
                    _buildMyTextBold("12 000"),
                  ],
                ),
                SizedBox(height: getUniqueH(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      shape: MyShape.circular(borderSide: const BorderSide()),
                      child: Padding(
                        padding: MyEdgeInsets.symmetric(h: 17.51, v: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildIconButton(MyAssetIcons.minus),
                            MyTextBold(
                                text: '1', color: Colors.black, size: 20.0),
                            _buildIconButton(MyAssetIcons.plus),
                          ],
                        ),
                      ),
                    ),
                    MyButton(onPressed: () {}, label: 'Sotib olish'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconButton _buildIconButton(String assetIcon) => IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(assetIcon),
      );

  MyTextBold _buildMyTextBold(String text) => MyTextBold(
        text: text,
        size: 20.0,
        color: Colors.black,
      );
}