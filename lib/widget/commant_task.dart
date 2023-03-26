import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';
import '../core/constant/style.dart';

Widget Commant_task() {
  return TextField(
    decoration: InputDecoration(
        focusColor: ConstantColor.black2,
        focusedBorder: Style.style6,
        border: Style.style6,
        hintText: "add note",
        hintStyle: Style.style1,
        fillColor: ConstantColor.white3,
        filled: true),
    keyboardType: TextInputType.multiline,
  );
}
