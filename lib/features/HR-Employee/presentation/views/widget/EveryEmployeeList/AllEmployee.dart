import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';

import '../ListTileCustom.dart';

class AllTabView extends StatelessWidget {
  AllTabView({Key? key}) : super(key: key);

  Random x = Random();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
            (index) {
          return ListTileCustom(employeeType: x.nextInt(6));
        },
      ),
    );
  }
}
