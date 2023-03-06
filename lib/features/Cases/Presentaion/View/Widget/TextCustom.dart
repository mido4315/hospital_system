import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  TextCustom({
    required this.fontSize,
    required this.Title,
    required this.color,

  });
  String? Title;
  Color? color;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${Title}',
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
