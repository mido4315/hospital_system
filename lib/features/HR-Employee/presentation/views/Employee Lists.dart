import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/AllEmployee.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Analysis.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Doctor.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Hr.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Manger.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Nurse.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/EveryEmployeeList/Receptionlist.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/ListTileCustom.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/textFormField.dart';

import 'new HR user.dart';

TabController? tabController;
int tabViewIndex = 0;

class EmployeeList extends StatefulWidget {
  EmployeeList();
  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList>
    with TickerProviderStateMixin {
  TextEditingController searchCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    tabController =
        TabController(length: 7, vsync: this, initialIndex: tabViewIndex);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
 backgroundColor: ConstantColor.lightGreen,

          onPressed: (){
            Show.snackBar(context: context, content: 'Add New Employee',duration: 1);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewHRuser()));
          },
          child: Icon(Icons.add,color: ConstantColor.white,size: 40,),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Positioned(
                  left: 0,
                  top: 0,
                  child: Image(
                    image: AssetImage('assets/Sign_In/backimage1.png'),
                  ),
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image(
                    image: AssetImage('assets/Sign_In/backimage2.png'),
                  ),
                ),
                Container(
                  width: PageSize.width(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'Employee',
                          style:
                              TextStyle(color: ConstantColor.black3, fontSize: 16),
                        ),
                      ),
                      newformFieldCustom(
                        controller: searchCon,
                        passmode: false,
                        errorText: '',
                        hintText: "Search For Employee",
                        iconData: Icons.search,
                      ),
                      Container(
                        height: PageSize.height(context) * 0.83,
                        width: PageSize.width(context),
                        //color: Colors.blue,
                        child: Column(
                          children: [
                            Container(
                              height: PageSize.height(context) * 0.05,
                              width: PageSize.width(context),
                              color: Colors.white,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 0,
                                      title: 'All',
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 1,
                                      title: 'Doctors',
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 2,
                                      title: 'Nurse',
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 3,
                                      title: "Hr",
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 4,
                                      title: 'Receptionist',
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 5,
                                      title: 'Manger',
                                    ),
                                    ElevatedButtonTabBar(
                                      TabViewIndex: 6,
                                      title: 'Analysis Employee',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: PageSize.height(context) * 0.73,
                              width: PageSize.width(context),
                              //color: Colors.purpleAccent,
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  AllTabView(),
                                  DoctorTabView(),
                                  NurseTabView(),
                                  HrTabView(),
                                  ReceptionlistTabView(),
                                  MangerTabView(),
                                  AnalysisTabView(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ElevatedButtonTabBar({
    required int TabViewIndex,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: ElevatedButton(
        onPressed: () {
          print('sdcsdc');
          setState(
            () {
              tabViewIndex = TabViewIndex;
              print(tabViewIndex);
            },
          );
        },
        style: ElevatedButton.styleFrom(
            primary: tabViewIndex == TabViewIndex
                ? ConstantColor.lightGreen
                : ConstantColor.white,
            side: BorderSide(color: Colors.black26)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
