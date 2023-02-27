import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class NurseTabView extends StatelessWidget {
  const NurseTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
          ListTileCustom(employeeType: 1),
        ],
      ),
    );
  }
}
