import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/my_nutrion_history_item.dart';

class NutritionHistoryPageView extends StatelessWidget {
  const NutritionHistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ovqatlanish tarixi'),
        leading: IconButton(
          padding: EdgeInsets.zero,
            onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset(MyAssetIcons.left)),
      ),
      body: Container(child: ListView.builder(
        itemCount: 9,
        shrinkWrap: true,
        itemBuilder: (context,index)=> MyNutrionHistoryItem()),),
    );
  }
}
