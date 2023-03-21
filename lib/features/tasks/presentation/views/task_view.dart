import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Type_task.dart';
import '../../../../widget/calander_widget.dart';

class task_view extends StatefulWidget {
  const task_view({Key? key}) : super(key: key);

  @override
  State<task_view> createState() => _task_viewState();
}

String birthDate = '24 . 04 . 2021';

class _task_viewState extends State<task_view> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    a() async {
      DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime(2000),
          firstDate: DateTime(2000),
          lastDate: DateTime(20020));
      setState(() {
        birthDate = selectedDate.toString().substring(0, 10);
      });
    }

    return Scaffold(
      // backgroundColor: ConstantColor.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon:Icon(Icons.arrow_back),
          color: ConstantColor.black3,
        ),
        shadowColor: Colors.transparent,
        backgroundColor: ConstantColor.white,
        title: const Text(
          "Tasks",
          style: Style.style2,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(width: width * .91, child: Calander(context, a,height)),
              Type_task(Style.styleO, ConstantColor.green, "Task Name",
                  "$birthDate", ConstantColor.green, "Finshed "),
              Type_task(Style.style4, ConstantColor.orange, "Task Name",
                  "$birthDate", ConstantColor.green, "Proceess"),
              Type_task(Style.styleO, ConstantColor.green, "Task Name",
                  "$birthDate", ConstantColor.green, "Finshed "),
              Type_task(Style.style4, ConstantColor.orange, "Task Name",
                  "$birthDate", ConstantColor.green, "Proceess"),
              Type_task(Style.styleO, ConstantColor.green, "Task Name",
                  "$birthDate", ConstantColor.green, "Finshed "),
            ],
          ),
        ],
      ),
    );
  }
}
