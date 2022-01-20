import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_asset_icons.dart';
import 'package:smartfarm/widgets/products_button.dart';
class TestProduct extends StatelessWidget {
  const TestProduct({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: ProductButton(img: ProductName.tuxum,txt: "Tuxum",),      
    );
  }
}