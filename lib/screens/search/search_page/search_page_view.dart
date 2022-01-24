import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/size_config.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  _SearchPageViewState createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                child: Container(
                  height: getUniqueH(50.0),
                  width: getUniqueW(50.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
