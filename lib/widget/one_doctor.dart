// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget one_doctor(String amage, double width, nameDoctor, Specialist) {
  return Container(
    width: width * .8,
    child: Row(
      children: [
        Image.asset("$amage"),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text("$nameDoctor"),
            SizedBox(
              height: 5,
            ),
            Text("Specialist $Specialist")
          ],
        ),
      ],
    ),
  );
}
