import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';

class TextformFieldCustom extends StatefulWidget {
  TextformFieldCustom(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefix,
      required this.errorText,
      required this.passmode,
      this.textInputType});
  TextEditingController controller = TextEditingController();
  String hintText;
  String errorText;
  bool passmode;
  Widget prefix;

  TextInputType? textInputType;

  @override
  State<TextformFieldCustom> createState() => _TextformFieldCustomState();
}

class _TextformFieldCustomState extends State<TextformFieldCustom> {
  @override
  bool passicon = false;
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        obscureText: !passicon,
        decoration: InputDecoration(
            hintText: widget.hintText,
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
            prefixIcon: widget.prefix,
            suffixIcon: widget.passmode
                ? passicon
                    ? IconButton(
                        onPressed: () {
                          setState(() => passicon = !passicon);
                          print(passicon);
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: ConstantColor.lightGreen,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() => passicon = !passicon);
                        },
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: ConstantColor.lightGreen,
                        ),
                      )
                : SizedBox()),
        validator: (value) {
          if (value!.length < 6)
            return widget.errorText;
          else
            return null;
        },
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
