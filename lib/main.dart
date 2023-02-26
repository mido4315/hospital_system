import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Screens/Attendance%20and%20Leaving_Screen.dart';
import 'package:hospital_system/features/profile/presentation/views/profile.dart';
import 'features/HR-Employee/presentation/views/new HR user.dart';
import 'features/HR-Employee/presentation/views/widget/DropDownButtonCustom.dart';
import 'features/sign In/presentation/views/SginIn.dart';
//import 'features/splash/presentation/views/splash_view.dart';
import 'features/profile/presentation/views/profile.dart';
import 'features/splash - prototype map/presentation/views/prototype_map.dart';
import 'features/tasks/presentation/views/task_view.dart';
import 'features/test/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ConstantColor.lightGreen,
        fontFamily: 'Poppins'
      ),
      home: NewHRuser()
    );
  }
}

