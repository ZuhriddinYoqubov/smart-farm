import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/widgets/my_text_bold.dart';
import 'package:smartfarm/widgets/my_text_regular.dart';

class MyFarmButtonsoneBox extends StatelessWidget {
  int? index;
  String? img;
  String? name;
  String? info;
  String product;
  int? countbox;
  MyFarmButtonsoneBox({
    required this.index,
    required this.img,
    required this.name,
    required this.info,
    required this.product,
    this.countbox = 1,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: MyColors.grey),
      height: getUniqueH(150.0),
      width: getUniqueW(330.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            img!,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: getUniqueH(10.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  Container(
                    height: getUniqueH(15.0),
                    width: getUniqueW(22.0),
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.green),
                  ),
                ],
              ),
              SizedBox(
                height: getUniqueH(74.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextBold(
                    text: name!,
                    size: 16.0,
                    color: MyColors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextRegular(
                    text: info!,
                    size: 10.0,
                    color: MyColors.white,
                  ),
                  SizedBox(
                    width: getUniqueW(170.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyFarmButtonstwoBox extends StatelessWidget {
  int? index;
  String? img;
  String? name;
  String? info;
  String product;
  String product1;
  int? countbox;
  MyFarmButtonstwoBox({
    required this.index,
    required this.img,
    required this.name,
    required this.info,
    required this.product,
    required this.product1,
    this.countbox = 1,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: MyColors.grey),
      height: getUniqueH(150.0),
      width: getUniqueW(330.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            img!,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: getUniqueH(10.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  Container(
                    height: getUniqueH(15.0),
                    width: getUniqueW(22.0),
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.green),
                  ),
                ],
              ),
              SizedBox(
                height: getUniqueH(74.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextBold(
                    text: name!,
                    size: 16.0,
                    color: MyColors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextRegular(
                    text: info!,
                    size: 10.0,
                    color: MyColors.white,
                  ),
                  SizedBox(
                    width: getUniqueW(120.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                  SizedBox(
                    width: getUniqueW(5.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product1,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyFarmButtonsthreeBox extends StatelessWidget {
  int? index;
  String? img;
  String? name;
  String? info;
  String product;
  String product1;
  String product2;
  int? countbox;
  MyFarmButtonsthreeBox({
    required this.index,
    required this.img,
    required this.name,
    required this.info,
    required this.product,
    required this.product1,
    required this.product2,
    this.countbox = 1,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: MyColors.grey),
      height: getUniqueH(150.0),
      width: getUniqueW(330.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            img!,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: getUniqueH(10.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  Container(
                    height: getUniqueH(15.0),
                    width: getUniqueW(22.0),
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.green),
                  ),
                ],
              ),
              SizedBox(
                height: getUniqueH(74.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextBold(
                    text: name!,
                    size: 16.0,
                    color: MyColors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: getUniqueW(10.0),
                  ),
                  MyTextRegular(
                    text: info!,
                    size: 10.0,
                    color: MyColors.white,
                  ),
                  SizedBox(
                    width: getUniqueW(80.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                  SizedBox(
                    width: getUniqueW(5.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product1,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                   SizedBox(
                    width: getUniqueW(5.0),
                  ),
                  Container(
                    width: getUniqueW(43.0),
                    height: getUniqueH(24.0),
                    child: Center(
                        child: Text(
                      product2,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: MyColors.primary),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
