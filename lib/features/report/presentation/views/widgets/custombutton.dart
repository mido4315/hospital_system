import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.label,
    required this.color,
    required this.onPressed,
    required this.style,
    this.width=double.infinity,
    this.height=45,
  }) : super(key: key);
  final String label;
  final Color color;
  TextStyle? style;
  double width;
  double height;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {

    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: color,
      minimumSize:  Size(width,height),
        shape: RoundedRectangleBorder(
          side:BorderSide(color: Color(0xff22C7B8),width: 2),
            borderRadius: BorderRadius.circular(10.0)),
    ),
      onPressed:(){
        onPressed!();
      },
      child: Text(
        label ,style: style,textAlign: TextAlign.center,),
    );
  }
}





