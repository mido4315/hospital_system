import 'package:flutter/material.dart';

import '../ListTileCustom.dart';

class MangerTabView extends StatelessWidget {
  const MangerTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTileCustom(employeeType: 4),
          ListTileCustom(employeeType: 4),
        ],
      ),
    );
  }
}
