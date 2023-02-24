import 'package:flutter/material.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Widgets/ContainerBox.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Widgets/CustomAppBar.dart';

import '../Widgets/ColordContainer.dart';

class AttendanceandLeaving extends StatelessWidget {
  const AttendanceandLeaving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ContainerBox(
                width: width,
                height: height,
                iconData: Icons.check_circle,
                title: 'Attendance ',
                subtitle: '09 : 00 am',
                color: Colors.green,
              ),
              ContainerBox(
                width: width,
                height: height,
                iconData: Icons.cabin,
                title: 'Leaving',
                subtitle: '04 : 00 pm',
                color: Colors.deepOrange,
              ),
            ],
          ),
        ));
  }
}


