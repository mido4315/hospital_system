import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Widgets/CustomAppBar.dart';

import '../../business_logic/attendance_in_cubit.dart';
import '../Widgets/ColordContainer.dart';

class AttendanceandLeaving extends StatelessWidget {
  const AttendanceandLeaving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final attendanceCubit = BlocProvider.of<AttendanceCubit>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              CustomAppBar(),
              ColordContainer(
                subtitle:
                    '''Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industrys''',
                title: 'Note',
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFffffff), borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Attendance'),
                    subtitle: Text(
                      '09 : 00 am',
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
                          color: Color(0xFF22C7B8)),
                      child: IconButton(
                        iconSize: 36,
                        icon: Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          final data = {
                            'employeeId': 123,
                            'date': '2023-05-07',
                            'status': 'present',
                          };
                          attendanceCubit.submitAttendance(data);
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
                      color: Color(0xFFffffff), borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text('Leaving'),
                        subtitle: Text(
                          '04 : 00 pm',
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
                              color: Color(0xFF22C7B8)),
                          child: IconButton(
                            iconSize: 36,
                            icon: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              final data = {
                                'employeeId': 123,
                                'date': '2023-05-07',
                                'status': 'leaving',
                              };
                              attendanceCubit.submitAttendance(data);
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
        ));
  }
}
