import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class AnalysisTabView extends StatelessWidget {
  const AnalysisTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
          ListTileCustom(employeeType: 5),
        ],
      ),
    );
  }
}
