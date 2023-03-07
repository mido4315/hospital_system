import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class DoctorTabView extends StatelessWidget {
  const DoctorTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
          ListTileCustom(employeeType: 0),
        ],
      ),
    );
  }
}
