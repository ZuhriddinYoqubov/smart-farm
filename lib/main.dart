import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/theme.dart';
import 'package:smartfarm/screens/body_page/body_page_view.dart';
import 'package:smartfarm/test_product/test_product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Farm',
      theme: getApplicationTheme(),
      home: TestProduct(),
    );
  }
}
