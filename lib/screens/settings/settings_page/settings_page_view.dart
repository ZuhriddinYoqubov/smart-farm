import 'package:flutter/material.dart';

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SettingsPage',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
