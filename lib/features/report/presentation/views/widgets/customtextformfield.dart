import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/style.dart';


class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.label,this.widget,this.maxLine=1}) : super(key: key);
  final String label;
  Widget? widget;
  int maxLine;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      decoration:  InputDecoration(
        floatingLabelAlignment:  FloatingLabelAlignment.start ,
        alignLabelWithHint: true,
       floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
        filled: true,
        fillColor: ConstantColor.white,
        suffixIcon:widget ?? const Text(""),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE3E3E3)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelStyle: Style.textLabel,
        labelText: label,
      ),
    );
  }
}





