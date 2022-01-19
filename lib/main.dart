import 'package:flutter/material.dart';
import 'package:smartfarm/view/screens/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Farm',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePageView(),
    );
  }
}
