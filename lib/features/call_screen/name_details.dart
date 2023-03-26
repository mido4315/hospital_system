// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/style.dart';

Widget name_details(width) {
  return Container(
      width: width * .9,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: ConstantColor.gray),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Task name",
          style: Style.style5,
        ),
      ));
}
