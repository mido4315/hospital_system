import 'package:flutter/material.dart';

import '../../../../../core/constant/color.dart';

class newformFieldCustom extends StatefulWidget {
  newformFieldCustom(
      {super.key,
      required this.controller,
      required this.hintText,
      this.prefix,
      required this.errorText,
      required this.passmode,
      required this.iconData,
      this.textInputType});
  TextEditingController controller = TextEditingController();
  String hintText;
  String errorText;
  IconData iconData;
  bool passmode;
  Widget? prefix;

  TextInputType? textInputType;

  @override
  State<newformFieldCustom> createState() => newformFieldCustom_s();
}

class newformFieldCustom_s extends State<newformFieldCustom> {
  @override
  bool passicon = false;
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.textInputType,
          obscureText: passicon,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.redAccent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ConstantColor.lightGreen)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black26)),
              prefixIcon: Icon(
                widget.iconData,
                color: ConstantColor.lightGreen,
              ),
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
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
