// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/core/constant/style.dart';
import 'package:roundcheckbox/roundcheckbox.dart';


Widget check_box(textView)
{
  return   Column(
    children: [
      Row(
        children: [
          RoundCheckBox(onTap: (selected) {},size: 24,checkedColor: ConstantColor.blue,),
          SizedBox(width: 5,),
          Text(textView,style: Style.style5_4,)
        ],
      ),
      SizedBox(height: 5,)
    ],
  );
}