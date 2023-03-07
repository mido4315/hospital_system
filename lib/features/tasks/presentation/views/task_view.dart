// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgeassets.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Type_task.dart';
import '../../../../widget/calander_widget.dart';
import '../../../../widget/callsTask.dart';
import '../../../Create Call/presentation/views/all_call.dart';

class task_view extends StatefulWidget {
  task_view(this.title, {super.key});
  var title ;




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
 a ()async {
  DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2020),
      firstDate: DateTime(2020),
      lastDate: DateTime(20020)
  );
  setState(() {
    birthDate = selectedDate.toString().substring(0, 10);
  });
}
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back,color: ConstantColor.black3,),) ,
       shadowColor: Colors.transparent,
        backgroundColor: ConstantColor.white,
        title:  Text(widget.title,style: Style.style2,),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(width: 5,),
                 SizedBox( width: width*.86,height: height*0.061, child: Calander(context,a,height)),
               widget.title =="Calls" ?  InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute (
                         builder: (BuildContext context) =>  create_call(),
                       ),);
                     },
                     child: Image.asset("assets/tasks/Group 2868.png",height: height*0.06,width: 40,)
                 ): Container()
               ],
             ),
              Type_task(Style.styleO,ConstantColor.green,"Task Name",birthDate,ConstantColor.green,"Finshed "),
              Type_task(Style.style4,ConstantColor.orange,"Task Name",birthDate,ConstantColor.green,"Proceess"),
              Type_task(Style.styleO,ConstantColor.green,"Task Name",birthDate,ConstantColor.green,"Finshed "),
              Type_task(Style.style4,ConstantColor.orange,"Task Name",birthDate,ConstantColor.green,"Proceess"),
              Type_task(Style.styleO,ConstantColor.green,"Task Name",birthDate,ConstantColor.green,"Finshed "),
              Type_task(Style.style4,ConstantColor.orange,"Task Name",birthDate,ConstantColor.green,"Proceess"),
            ],
          ),
        ],
      ),
    );
  }
}
