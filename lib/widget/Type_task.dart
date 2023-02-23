import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';
import '../core/constant/style.dart';

Widget Type_task(TextStyle style,Color color,nameTask,data,type,nameType)
{
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
        decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),color: ConstantColor.white
        ),

      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                  children: [


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/tasks/Group 4693.png"),
                    ),
                     Text("$nameTask",style: Style.style3,)
               ],),
              Container(
                decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),color: color
                ),
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Text("$nameType",style: style,),
              ),
              )
            ],),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/tasks/Group 4692.png"),
              ),
               Text("$data",style: Style.style3)
            ],),
          ],
        ),
      )
    ),
  );
}