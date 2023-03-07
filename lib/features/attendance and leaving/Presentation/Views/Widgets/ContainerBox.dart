import 'package:flutter/material.dart';

import '../Screens/TouchID_Sensor_Screen.dart';
class ContainerBox extends StatelessWidget {
  ContainerBox({
    super.key,
    required this.width,
    required this.height,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final double width;
  final double height;
  IconData iconData;
  String title;
  String subtitle;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFffffff), borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('$title'),
              subtitle: Text(
                '$subtitle',
                style: TextStyle(color: Color(0xFF22C7B8)),
              ),
              trailing: Icon(
                iconData,
                color: color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 20, 12),
              child: Container(
                width: width * .18,
                height: height * .06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFF22C7B8)),
                child: IconButton(
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TouchIDSensor()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
