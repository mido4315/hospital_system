import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/Cases/Presentaion/View/Widget/TextCustom.dart';

import '../../../../Doctor , Case/Presention/Viwes/Screens/CaseDetails.dart';
import 'Medical Measurement.dart';
import 'MedicalRecord.dart';

TabController? tabController;
int tabViewIndex=0;

class CaseTabDetails extends StatefulWidget {
  const CaseTabDetails({Key? key}) : super(key: key);

  @override
  State<CaseTabDetails> createState() => _CaseTabDetailsState();
}

class _CaseTabDetailsState extends State<CaseTabDetails> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    tabController =TabController(length: 2, vsync: this,initialIndex: tabViewIndex);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Cases Details',
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
        body: Column(
          children: [
            Container(
              height: PageSize.height(context)*0.87,
              width: PageSize.width(context),
              // color: Colors.purple,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButtonTabBar(title: 'Case',TabViewIndex: 0),
                          const SizedBox(width: 10,),
                          ElevatedButtonTabBar(title: 'Medical Measurement',TabViewIndex: 1),
                        ],
                      ),
                    ),
                    Container(

                      height: PageSize.height(context)*0.9,
                      width: PageSize.width(context),

                      child: TabBarView(
                        controller: tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const Center(child: CaseDetails(),),
                          const MedicalMeasurement(),
                        ],
                      ),
                    ),
                  ],
                ),
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
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
