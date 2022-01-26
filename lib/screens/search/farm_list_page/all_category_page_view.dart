import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AllCategoryPageView extends StatelessWidget {
  String categoryName;

  AllCategoryPageView({
    required this.categoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _setText(categoryName),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      toolbarHeight: getUniqueH(64.0),
      leadingWidth: getUniqueW(49.0),
      title: SearchField(),
    );
  }

  SliverToBoxAdapter _setText(String text) => SliverToBoxAdapter(
        child: MyTextBold(
          text: categoryName,
          size: 20.0,
        ),
      );
}
