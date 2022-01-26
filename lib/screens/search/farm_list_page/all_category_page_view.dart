import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AllCategoryPageView extends StatelessWidget {
  const AllCategoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leadingWidth: getUniqueW(49.0),
      title: SearchField(),
    );
  }
}
