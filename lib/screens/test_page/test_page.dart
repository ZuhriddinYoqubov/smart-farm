import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/core/constants/size_config.dart';
import 'package:smartfarm/screens/search/search_page/search_page_view.dart';
import 'package:smartfarm/widgets/product_card_bottom.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: SearchPageView(),
      ),
    );
  }
}
