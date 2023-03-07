// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';



import '../../../../core/constant/color.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Text_feld.dart';
import '../../../../widget/callsTask.dart';
class call extends StatelessWidget {
  // create_call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: ConstantColor.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back,color: ConstantColor.black3,),) ,
        shadowColor: Colors.transparent,
        backgroundColor: ConstantColor.white,
        title:  Text(" Call",style: Style.style2,),
        centerTitle: true,
      ),
      body: Center(child: ListView(
        children: [
          callstask("Ebrahem Khalad ","24-04-2021",(){},(){}),
          callstask("Ebrahem Khalad ","24-04-2021",(){},(){}),
          callstask("Ebrahem Khalad ","24-04-2021",(){},(){}),
          callstask("Ebrahem Khalad ","24-04-2021",(){},(){}),
        ],
      ),)
    );
  }
}
