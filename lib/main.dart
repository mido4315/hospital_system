import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';
import 'package:hospital_system/features/Main/presentation/view/screens/main_page.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Screens/Attendance%20and%20Leaving_Screen.dart';
import 'package:hospital_system/features/profile/presentation/views/screens/profile.dart';
import 'package:provider/provider.dart';
import 'features/Cases/Presentaion/View/Screen/Case TabBar.dart';
import 'features/HR-Employee/presentation/views/Employee Lists.dart';
import 'features/HR-Employee/presentation/views/new HR user.dart';
import 'features/addmeasurement/Presentation/screen/addmeasurement.dart';
import 'features/addmedicalrecord/Presentation/screen/addmedicalrecord.dart';
import 'features/profile/presentation/views/screens/profile.dart';
import 'features/report/presentation/views/create_report.dart';
import 'features/splash - prototype map/presentation/views/splash_view.dart';

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
      home:CaseTabView(),


      //const SplashView(),
    ),);
  }
}

