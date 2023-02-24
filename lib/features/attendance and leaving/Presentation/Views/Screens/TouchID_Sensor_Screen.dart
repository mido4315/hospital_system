import 'package:flutter/material.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Widgets/Finger_Print.dart';

class TouchIDSensor extends StatelessWidget {
  const TouchIDSensor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF22C7B8),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FingerPrint(),
          ],
        ));
  }
}
