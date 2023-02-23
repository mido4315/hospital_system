// ignore_for_file: non_constant_identifier_names


import 'package:flutter/material.dart';
import '../core/constant/color.dart';
import '../core/constant/imgeassets.dart';
import '../core/constant/style.dart';
import '../features/tasks/presentation/views/task_view.dart';

Widget Calander(BuildContext context,a ){
  return TextField(
    decoration: InputDecoration(
        suffixIcon: Container( height: 49,
            decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),color: ConstantColor.black2
           ), child: Image.asset(ImageAssets.calander)
        ),
        focusColor: ConstantColor.black2,
        focusedBorder: Style.style6,
        border: Style.style6,
        hintText: birthDate,
      hintStyle: Style.style1
    ),
    readOnly: true,
    onTap:a,
  );
}