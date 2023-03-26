import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';

class Textformfield extends StatelessWidget {
  Textformfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefix});

  TextEditingController controller = TextEditingController();
  String hintText;
  Widget prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ConstantColor.lightGreen)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black26)),
        prefixIcon: Icon(
          Icons.local_phone_outlined,
          color: ConstantColor.lightGreen,
        ),
      ),
      validator: (value) {
        if (value!.length < 6)
          return null;
        else
          return 'plz enter your E_Mail';
      },
    );
  }
}
