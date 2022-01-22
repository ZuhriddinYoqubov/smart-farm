import 'package:flutter/material.dart';
import 'package:smartfarm/screens/home/nutrition_history_page/nutrition_history_page_view.dart';

class MyAnimalsDetailPageView extends StatelessWidget {
  const MyAnimalsDetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyAnimalsDetailPage'),
      actions: [buildButtonKoproqKorish(context)],),
      );
  }



  Widget buildButtonKoproqKorish(BuildContext context) {
    return TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NutritionHistoryPageView(),
                ));
          },
          child: Text("Ko'proq ko'rish"));
  }
}
