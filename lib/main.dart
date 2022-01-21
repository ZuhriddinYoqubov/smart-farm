import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/theme.dart';
import 'package:smartfarm/screens/test_page/test_page.dart';

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
      home: TestPage(),
    );
  }
}
