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
    this.radius=10,
    this.icon,
    this.borderColor=Colors.white,
    this.borderWidth=0,

  }) : super(key: key);
  final String label;
  final Color color;
  TextStyle? style;
  double width;
  double height;
  double radius;
  IconData? icon;
  Color borderColor;
  double borderWidth;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {

    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize:  Size(width,height),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ,width: borderWidth),
            borderRadius: BorderRadius.circular(radius)),
    ),
      onPressed:(){
        onPressed!();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        icon!=null?Icon(icon):Text(""),
          const SizedBox(width: 2,),
          Text(
          label ,style: style,textAlign: TextAlign.center,),
      ]),
    );
  }
}





