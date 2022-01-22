import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimalsCardBottom(
          img: 'https://images.unsplash.com/photo-1545468800-85cc9bc6ecf7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80',
          data: "2 oylik",
          price: "5000000",
          text: "Golland sigiri",
        ),
      ),
    );
  }
}
