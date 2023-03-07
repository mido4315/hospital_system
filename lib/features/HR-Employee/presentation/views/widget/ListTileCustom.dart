import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/ALL%20List.dart';

class ListTileCustom extends StatelessWidget {
  ListTileCustom({required this.employeeType});

  int employeeType;
  Random x = Random();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${AllList.EmployeeName[x.nextInt(6)]}',
        style: TextStyle(
          fontSize: 18,
          color: ConstantColor.black,
        ),
      ),
      subtitle: Text('${AllList.EmployeeType[employeeType]}',

        style: TextStyle(
          fontSize: 16,
          color: ConstantColor.Gray,
        ),
      ),
      leading: Image.asset(
          'assets/EmployeeImage/${AllList.EmployeeImage[x.nextInt(6)]}'),
    );
  }
}
