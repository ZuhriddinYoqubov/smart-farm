import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class ContactBottomSheet extends StatelessWidget {
  const ContactBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(345.0),
      decoration: MyDecoration.circular(color: MyColors.white),
      child: Column(
        children: [
          const BottomSheetHolder(),
          MySizedBox(height: 32.0),
          MyTextBold(text: 'Ina Ferma', size: 24.0),
          MySizedBox(height: 20.0),
          const MyDivider(),
          Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MySizedBox(height: 20.0),
                MyTextBold(
                  text: 'Email',
                ),
                MySizedBox(height: 10.0),
                MyTextBold(text: 'john.wick@gmail.com', size: 20.0),
                MySizedBox(height: 20.0),
                const MyDivider()
              ],
            ),
          )
        ],
      ),
    );
  }
}
