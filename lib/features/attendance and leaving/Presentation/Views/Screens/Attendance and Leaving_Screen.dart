import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Widgets/CustomAppBar.dart';

import '../../../data/api service/apiservice.dart';
import '../../business_logic/attendance_in_cubit.dart';
import '../Widgets/ColordContainer.dart';
import 'TouchID_Sensor_Screen.dart';

class AttendanceandLeaving extends StatefulWidget {
  const AttendanceandLeaving({Key? key}) : super(key: key);

  @override
  State<AttendanceandLeaving> createState() => _AttendanceandLeavingState();
}

class _AttendanceandLeavingState extends State<AttendanceandLeaving> {
  DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocProvider<AttendanceInCubit>(
      create: (context) => AttendanceInCubit(AttendanceService()),
  child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              const CustomAppBar(),
              ColordContainer(
                subtitle:
                    '''Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industrys''',
                title: 'Note',
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFffffff), borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   ListTile(
                    title: Text('Attendance'),
                    subtitle: Text(
                      '${currentTime.hour}:${currentTime.minute}am',
                      style: TextStyle(color: Color(0xFF22C7B8)),
                    ),
                    trailing: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 20, 12),
                    child: Container(
                      width: width * .18,
                      height: height * .06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xFF22C7B8)),
                      child: IconButton(
                        iconSize: 36,
                        icon: const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          currentTime = DateTime.now();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>
                             TouchIDSensor(
                              onAuthenticationResult: (isAuthenticated ) {
                                if (isAuthenticated) {
                                  BlocProvider.of<AttendanceInCubit>(context).submitAttendance({
                                    'status': 'attendance',
                                  });
                                }
                            },)),
                          );

                          // attendanceCubit.submitAttendance(data);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFffffff), borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       ListTile(
                        title: Text('Leaving'),
                        subtitle: Text(
                          '${currentTime.hour}:${currentTime.minute}am',
                          style: TextStyle(color: Color(0xFF22C7B8)),
                        ),
                        trailing: Icon(
                          Icons.close_outlined,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 20, 12),
                        child: Container(
                          width: width * .18,
                          height: height * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xFF22C7B8)),
                          child: IconButton(
                            iconSize: 36,
                            icon: const Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              currentTime = DateTime.now();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    TouchIDSensor(
                                      onAuthenticationResult: (isAuthenticated ) {
                                        if (isAuthenticated) {
                                          BlocProvider.of<AttendanceInCubit>(context).submitAttendance({
                                            'status': 'leaving',
                                          });
                                        }
                                      },)),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),



            ],
          ),
        )),
);
  }
}
