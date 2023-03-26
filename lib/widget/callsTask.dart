import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';
import '../core/constant/style.dart';

Widget callstask(
  nameTask,
  data,
  Function()? Botton1Pressed,
  Function()? Botton2Pressed,
) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: ConstantColor.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
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
                      Text(
                        "$nameTask",
                        style: Style.style3,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/tasks/Group 4692.png"),
                  ),
                  Text("$data", style: Style.style3)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: Botton1Pressed,
                      child:
                          Text("Accapt", style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: Botton2Pressed,
                      child:
                          Text("Busy", style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                    ),
                  )
                ],
              )
            ],
          ),
        )),
  );
}
