import 'package:flutter/material.dart';
class CustomTile extends StatelessWidget {
  Widget? icon;
  String tile;

  CustomTile({
    required this.icon,
    required this.tile,
  }
      );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0xff22C7B8).withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)
        ),
        child: icon,
      ),
      title: Text(tile),
    );
  }
}