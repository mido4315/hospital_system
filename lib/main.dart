import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';
import 'package:hospital_system/features/Measurment/data/repositry/Measurment_repo.dart';
import 'package:hospital_system/features/Measurment/data/web_services/Measurment_API.dart';
import 'package:hospital_system/features/addmeasurement/Presentation/screen/addmeasurement.dart';

import 'package:provider/provider.dart';

import 'features/Cases/Presentaion/View/Screen/Case TabBar.dart';
import 'features/Create Call/presentation/views/all_call.dart';
import 'features/Measurment/Business_Logic/Measure_Cubit/measurment_cubit.dart';
import 'features/Measurment/presentation/view/screens/MedicalRecord.dart';
import 'features/call_screen/name_details.dart';
import 'features/call_screen/presentation/views/Create Call.dart';
import 'features/sign In/presentation/views/SginIn.dart';
import 'features/splash - prototype map/presentation/views/splash_view.dart';
import 'features/tasks/presentation/views/task_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  MeasurmentAPI? measurmentAPI;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MeasurmentCubit>(
      create: (BuildContext context) => MeasurmentCubit(MeasurmentRepo(measurmentAPI!)),
      child: ChangeNotifierProvider(
        create: (context) => Provider_data(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: const Color(0xff22C7B8), fontFamily: 'Poppins'),
          home: AddMeasurement(),
          //const SplashView(),
        ),
      ),
    );
  }
}
