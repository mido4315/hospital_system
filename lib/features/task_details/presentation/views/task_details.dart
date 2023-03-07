// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/core/constant/imgeassets.dart';
import 'package:hospital_system/core/constant/style.dart';
import 'package:hospital_system/widget/Button_Execution.dart';
import 'package:hospital_system/widget/check_box_details.dart';
import 'package:hospital_system/widget/commant_task.dart';
import 'package:hospital_system/features/call_screen/name_details.dart';

class task_details extends StatelessWidget {
  const task_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    height/1;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      backgroundColor: ConstantColor.white,

      appBar: AppBar(

        leading: Icon(Icons.arrow_back,color: ConstantColor.black3,),
        shadowColor: Colors.transparent,
        backgroundColor: ConstantColor.white,
        title: const Text("Tasks Details",style: Style.style2,),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Column(
            children: [
             name_details(width),
              const SizedBox(height: 10,),
              SizedBox(
                width:  width*.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          Image.asset(ImageAssets.Task_Details1),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Shawky Ahmed",style: Style.style5_1,),
                              const SizedBox(height: 2,),
                              Text("Specialist - Manger",style: Style.style5_2,)
                            ],
                          ),
                        ],
                      ),

                       Padding(
                         padding: const EdgeInsets.only(bottom: 10),
                         child: Text("13 Mar 2020",style: Style.style5_3,),
                       )
                      ],
                     ),
                    const SizedBox(height: 10,),
                     Text("Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum",style: Style.style5_4,),
                  const SizedBox(height: 5,),
                    Image.asset(ImageAssets.Task_Details2),
                    const SizedBox(height: 20,),
                    const Text("To do"),
                    const SizedBox(height: 10,),
                  check_box("Lorem Ipsum is simply dummy text of"),
                  check_box("Lorem Ipsum is simply dummy text of"),
                  check_box("Lorem Ipsum is simply dummy text of"),
                  check_box("Lorem Ipsum is simply dummy text of"),
                    Commant_task(),
                    const SizedBox(height: 10,),
                    Button_Excution(width)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
