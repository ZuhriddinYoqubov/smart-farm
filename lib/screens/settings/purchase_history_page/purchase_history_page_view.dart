import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class PurchaseHistoryPageView extends StatelessWidget {
  const PurchaseHistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyTextSemibold(text: AppStrings.xaridlarTarixi),
        centerTitle: true,
        backgroundColor: MyColors.white,
        elevation: MyAppSize.s10,
      ),
      body: ListView.builder(
        padding: MyEdgeInsets.only(top: MyAppSize.s10),
        itemCount:  5,
        itemBuilder: (context, index){
        return const MyNutrionHistoryItem();
      })
    );
  }
}