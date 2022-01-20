import 'package:flutter/material.dart';
import 'package:smartfarm/screens/body_page/body_page_view.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BodyPageView(),
    );
  }
}
