import 'package:flutter/material.dart';

class ColordContainer extends StatelessWidget {
  ColordContainer({
    required this.title,
    required this.subtitle,
  });

  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFFDE7D9),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(subtitle),
              ],
            ),
          )),
    );
  }
}
