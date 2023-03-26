import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class ReceptionlistTabView extends StatelessWidget {
  const ReceptionlistTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTileCustom(employeeType: 3),
          ListTileCustom(employeeType: 3),
          ListTileCustom(employeeType: 3),
          ListTileCustom(employeeType: 3),
        ],
      ),
    );
  }
}
