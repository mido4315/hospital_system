import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/color.dart';

class ElevatedButtonCustom extends StatefulWidget {
  ElevatedButtonCustom({
    super.key,
    required this.onpressed,
    required this.height,
    required this.width,
    required this.cneterTitle,
    required this.buttonColor,
    this.Titlecolor,
  });

  Function onpressed;
  double height;
  double width;
  Color buttonColor;
  Color? Titlecolor;
  String cneterTitle;
  @override
  State<ElevatedButtonCustom> createState() => _ElevatedButtonCustomState();
}

class _ElevatedButtonCustomState extends State<ElevatedButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onpressed;
      },
      style: ElevatedButton.styleFrom(
        primary: widget.buttonColor,
      ),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Center(
          child: Text(
            widget.cneterTitle,
            style: TextStyle(color: ConstantColor.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
