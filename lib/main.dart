import 'package:flutter/material.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Screens/Attendance%20and%20Leaving_Screen.dart';
import 'package:hospital_system/features/profile/presentation/views/profile.dart';
import 'features/profile/presentation/views/profile.dart';
import 'features/splash - prototype map/presentation/views/splash_view.dart';
import 'features/tasks/presentation/views/task_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff22C7B8),
        fontFamily: 'Poppins'
      ),
      home: const SplashView(),
    );
  }
}

