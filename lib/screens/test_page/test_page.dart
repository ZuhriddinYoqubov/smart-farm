import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/core/constants/size_config.dart';
import 'package:smartfarm/widgets/animals_card_bottom.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimalsCardBottom(
          data: "202020",
          price: "50000",
          text: "Golland sigiri",
        ),
      ),
    );
  }
}
