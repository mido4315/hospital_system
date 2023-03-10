import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/Cases/Presentaion/View/Widget/TextCustom.dart';

import '../../../../Doctor , Case/Presention/Viwes/Screens/CaseDetails red.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Cases',
              style: TextStyle(color: Color(0xFFA9A9A9)),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          children: [

            const SizedBox(height: 20,),
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
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        CaseDetailsred(),
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
            side: const BorderSide(color: Colors.black26)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
