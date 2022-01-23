import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/size_config.dart';
import 'package:smartfarm/widgets/my_edge_insets.dart';
import 'package:smartfarm/widgets/buttons/my_elevated_button.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           MyButton(onPressed: (){}, label: 'SearchPage')

          ],
        ),
      ),
    );
  }
}
