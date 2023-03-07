import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/style.dart';
import '../widget/addmedicalrecord_content.dart';
import '../widget/addmedicalrecord_header.dart';

class AddMedicalRecord extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.white,
       centerTitle: true,
       title: const Text('Add medical record',style: Style.measurementStyle1),
     ),
       body: Container(
         width: double.infinity ,
         child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           AddAddMedicalRecordHeader(),
           AddAddMedicalRecordContent(),
         ],
     ),
       ),
   );
  }

}