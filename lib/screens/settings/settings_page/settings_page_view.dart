import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/bottom/bottom_sheet_with_credir_card.dart';

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff454545),
      appBar: AppBar(
        title: const Text(
          'SettingsPage',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      body: Center(
        child: ContactBottomSheet(),
      ),
    );
  }
}
