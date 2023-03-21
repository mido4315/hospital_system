import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';

import 'package:provider/provider.dart';

import 'features/Cases/Presentaion/View/Screen/Case TabBar.dart';
import 'features/Measurment/presentation/view/screens/MedicalRecord.dart';
import 'features/sign In/presentation/views/SginIn.dart';
import 'features/splash - prototype map/presentation/views/splash_view.dart';
import 'features/tasks/presentation/views/task_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Provider_data(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff22C7B8),
          fontFamily: 'Poppins'
      ),
      home:  SignIn(),
      //const SplashView(),
    ),);
  }
}

