// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget Button_Excution(width) {
  return SizedBox(
      height: 40,
      width: width * .99,
      child: ElevatedButton(
        onPressed: () {},
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xff22C7B8)),
        child: const Text("Execution"),
      ));
}
