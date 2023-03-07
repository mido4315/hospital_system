import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class HrTabView extends StatelessWidget {
  const HrTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          ListTileCustom(employeeType: 2),ListTileCustom(employeeType: 2),ListTileCustom(employeeType: 2),

        ],
      ),
    );
  }
}
