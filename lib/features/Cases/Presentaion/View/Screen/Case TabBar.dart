import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/Cases/Presentaion/View/Widget/TextCustom.dart';

import 'Medical Measurement.dart';
import 'MedicalRecord.dart';

TabController? tabController;
int tabViewIndex=0;

class CaseTabView extends StatefulWidget {
  const CaseTabView({Key? key}) : super(key: key);

  @override
  State<CaseTabView> createState() => _CaseTabViewState();
}

class _CaseTabViewState extends State<CaseTabView> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    tabController =TabController(length: 3, vsync: this,initialIndex: tabViewIndex);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: IconButton(
                onPressed: (){Navigator.pop(context);},
                icon: Icon(Icons.chevron_left_outlined,size: 20,color: Colors.black,),
              ),
              title: TextCustom(Title: 'Case Details',fontSize: 18,color: ConstantColor.black2),
            ),
            SizedBox(height: 20,),
            Container(
              height: PageSize.height(context)*0.87,
              width: PageSize.width(context),
             // color: Colors.purple,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButtonTabBar(title: 'Case',TabViewIndex: 0),
                      ElevatedButtonTabBar(title: 'Medical Record',TabViewIndex: 1),
                      ElevatedButtonTabBar(title: 'Medical Measurement',TabViewIndex: 2),
                    ],
                  ),
                  Container(

                    height: PageSize.height(context)*0.8,
                    width: PageSize.width(context),

                    child: TabBarView(
                      controller: tabController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Center(child: Text('sjhdc'),),
                        MedicalRecord(),
                        MedicalMeasurement(),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
  Widget ElevatedButtonTabBar({
    required int TabViewIndex,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3),
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
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
