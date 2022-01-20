import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';

class AnimalFeedingInfo extends StatelessWidget {
  const AnimalFeedingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: getUniqueW(230.0),
              height: getUniqueH(190.0),

            )
          ],
        )
      ],
    );
  }
}
