import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';

class TextformFieldCustom extends StatelessWidget {
  TextformFieldCustom({
    super.key,
    this.controller,
    required this.hintText,
    required this.prefix,
    required this.errorText,
    required this.passmode,
    this.textInputType,
    required this.onChanged,
  });

  TextEditingController? controller = TextEditingController();
  String hintText;
  String errorText;
  bool passmode;
  Widget prefix;
  final Function(String)? onChanged;
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        keyboardType: textInputType,
        obscureText: passmode,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.redAccent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ConstantColor.lightGreen)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black26)),
          prefixIcon: prefix,
        ),
        validator: (value) {
          if (value!.length < 6) {
            return errorText;
          } else {
            return null;
          }
        },
        onChanged: onChanged,
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
