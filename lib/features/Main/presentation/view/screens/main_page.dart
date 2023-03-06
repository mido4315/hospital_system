import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';
import 'package:provider/provider.dart';

import '../../../../HR-Employee/presentation/views/Employee Lists.dart';
import '../../../../attendance and leaving/Presentation/Views/Screens/Attendance and Leaving_Screen.dart';
import '../../../../attendance and leaving/Presentation/Views/Widgets/CustomAppBar.dart';
import '../../../../report/presentation/views/create_report.dart';
import '../../../../tasks/presentation/views/task_view.dart';
import 'package:hospital_system/core/constant/Provider_Data.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Provider_data>(builder: (context, provider_data, child) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const CustomAppBar(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 38),
                    child: Column(
                      children: [
                        //Employee
                        GestureDetector(
                          child: CustomContainer(
                            ContainerHeight: 225,
                            ContainerWidth: 170,
                            MeniContainerTop: 55,
                            MeniContainerLeft: 35,
                            MeniContainerHeight: 100,
                            MeniContainerWidth: 100,
                            ContainerText: provider_data.Prototype == 0 ||
                                    provider_data.Prototype == 1 ||
                                    provider_data.Prototype == 2
                                ? 'Calls'
                                : provider_data.Prototype == 3 ||
                                        provider_data.Prototype == 4
                                    ? 'Cases'
                                    : 'Employee',
                            ConColor: provider_data.Prototype == 0 ||
                                    provider_data.Prototype == 1 ||
                                    provider_data.Prototype == 2
                                ? Color(0xff5F9EDC)
                                : provider_data.Prototype == 3 ||
                                        provider_data.Prototype == 4
                                    ? Color(0xff5F9EDC)
                                    : Color(0xffDC915F),
                            IconImage: provider_data.Prototype == 4 ||
                                    provider_data.Prototype == 3
                                ? 'images/FingerPrint/shield.png'
                                : provider_data.Prototype == 5
                                    ? 'images/FingerPrint/Empolyees.png'
                                    : 'images/FingerPrint/add.png',
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => EmployeeList(),
                              ),
                            );
                          },
                        ),

                        //Reports
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CreateReport(),
                              ));
                            },
                            child: CustomContainer(
                              ContainerHeight: 190,
                              ContainerWidth: 170,
                              MeniContainerTop: 38,
                              MeniContainerLeft: 35,
                              MeniContainerHeight: 100,
                              MeniContainerWidth: 100,
                              ContainerText: 'Reports',
                              ConColor: const Color(0xff915FDC),
                              IconImage: 'images/FingerPrint/document.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Column(
                      children: [
                        //Tasks
                        GestureDetector(
                          child: CustomContainer(
                            ContainerHeight: 190,
                            ContainerWidth: 170,
                            MeniContainerTop: 38,
                            MeniContainerLeft: 35,
                            MeniContainerHeight: 100,
                            MeniContainerWidth: 100,
                            ContainerText: 'Tasks',
                            ConColor: const Color(0xff5FDC89),
                            IconImage: 'images/FingerPrint/checkbox.png',
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const task_view(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //attendance & Leaving
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AttendanceandLeaving(),
                              ),
                            );
                          },
                          child: CustomContainer(
                            ContainerHeight: 240,
                            ContainerWidth: 170,
                            MeniContainerTop: 50,
                            MeniContainerLeft: 10,
                            MeniContainerHeight: 100,
                            MeniContainerWidth: 100,
                            ContainerText: 'Attendance - leaving',
                            ConColor: const Color(0xff5FDCDC),
                            IconImage: 'images/FingerPrint/fingerprint.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: provider_data.Prototype == 0 ||
                        provider_data.Prototype == 2 ||
                        provider_data.Prototype == 4
                    ? true
                    : false,
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffDC915F),
                          ),
                          width: 360,
                          height: 140,
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 40,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 135),
                              child: Text(
                                provider_data.Prototype == 0 ||
                                        provider_data.Prototype == 2
                                    ? 'Cases'
                                    : 'Employee',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xffDC915F),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white)),
                              child: Image.asset(
                                  provider_data.Prototype == 0 ||
                                          provider_data.Prototype == 2
                                      ? 'images/FingerPrint/shield.png'
                                      : 'images/FingerPrint/Empolyees.png',
                                  scale: 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class CustomContainer extends StatelessWidget {
  double ContainerWidth;
  double ContainerHeight;
  double MeniContainerWidth;
  double MeniContainerHeight;
  String IconImage;
  String ContainerText;
  Color ConColor;
  double MeniContainerTop;
  double MeniContainerLeft;

  CustomContainer({
    required this.ContainerHeight,
    required this.ContainerWidth,
    required this.MeniContainerHeight,
    required this.MeniContainerWidth,
    required this.MeniContainerTop,
    required this.MeniContainerLeft,
    required this.IconImage,
    required this.ConColor,
    required this.ContainerText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ConColor,
          ),
          width: ContainerWidth,
          height: ContainerHeight,
        ),
        Positioned(
          top: MeniContainerTop,
          left: MeniContainerLeft,
          child: Column(
            children: [
              Container(
                width: MeniContainerWidth,
                height: MeniContainerHeight,
                decoration: BoxDecoration(
                    color: ConColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white)),
                child: Image.asset(IconImage, scale: 2),
              ),
              const SizedBox(
                height: 5,
              ),
              Positioned(
                child: Text(
                  ContainerText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
