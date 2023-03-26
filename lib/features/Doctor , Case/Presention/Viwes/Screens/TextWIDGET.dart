import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  TextWidgets({
    required this.title,
    required this.subtitle,
  });
  String title;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.grey)),
          Text(subtitle),
        ],
      ),
    );
  }
}
