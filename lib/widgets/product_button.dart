import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/core/constants/size_config.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';

class ProductButton extends StatelessWidget {
  String? txt;
  String? img;
  ProductButton({
    required this.img,
    required this.txt,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.blueAccent,),
        height: getUniqueH(100.0),
        width: getUniqueW(140.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              img!,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: getUniqueH(39.0),
                        width: getUniqueW(90.23),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              ProductName.name,
                              fit: BoxFit.cover,
                            ),
                            Center(
                              child: MyTextBold(
                                text: txt!,
                                size: 14,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}