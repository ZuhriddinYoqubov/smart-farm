import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class ResultPageView extends StatelessWidget {
  ResultPageView({Key? key}) : super(key: key);

  List<String> shahar = <String>[
    'Chirchiq',
    'Chinoz',
    'Chorvoq',
    'Buka',
    'Katta Chimyon',
    'Bekobod',
    'Oxangaron',
    'Oxangaron',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MySizedBox(height: getUniqueH(9.98)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MySizedBox(width: getUniqueW(21.0)),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      MyAssetIcons.vector,
                    ),
                  ),
                  MySizedBox(width: getUniqueW(16.0)),
                  Container(
                    width: getUniqueW(296.0),
                    child: MySearchTextField(),
                  ),
                ],
              ),
              MySizedBox(height: getUniqueH(20.0)),
            ],
          ),
        ),
      ),
    );
  }
}
