import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/core/constant/imgeassets.dart';
import 'package:hospital_system/features/Cases/Presentaion/View/Widget/TextCustom.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({Key? key, String? state}) : super(key: key);

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
  bool aaa =false;
  bool bbb =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(image: AssetImage('${ImageAssets.EmployeeImage}/e3.png'),),
          title: TextCustom(Title: 'Aml Ezzat',color: Colors.black,fontSize: 14),
          subtitle: TextCustom(Title:'Specialist - Nurse',color: ConstantColor.lightGreen,fontSize: 14, ),
          trailing: TextCustom(Title: '13 Mar 2020',color: Colors.black54,fontSize: 12),
        ),
        TextCustom(
            Title: '''Details note : Lorem Ipsum is simply dummy text of 
printing and typesetting industry.Lorem Ipsum''',
            color: Colors.black,
            fontSize: 14),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(alignment: Alignment.centerLeft,child: TextCustom(Title: 'Medical Record', color: Colors.black, fontSize: 18)),
        ),
        MedicalListTile(title: 'Blood pressure',iconboolean: aaa,function: (){aaa=!aaa;}),
        MedicalListTile(title: 'Sugar analysis',iconboolean: bbb,function: (){bbb=!bbb;}),

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/Cases/medical.png'),
              ),
              IconButton(
                onPressed: () {
                  Show.snackBar(context: context, content: 'Download Medical Record',duration: 1);
                },
                icon: Icon(
                  Icons.download,
                  color: ConstantColor.lightGreen,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: PageSize.height(context)*0.19,),
        ElevatedButton(
          onPressed: () {
            Show.snackBar(context: context, content: 'Delete Case',duration: 1);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red
          ),
          child: Container(
            height: 50,
            width: PageSize.width(context) * 0.85,
            child: Center(child: TextCustom(Title: 'End Case',color: Colors.white,fontSize: 15)),
          ),
        ),
      ],
    );
  }

  Widget MedicalListTile(
      {required String title,
      required bool iconboolean,
      required Function function}) {
    return ListTile(
      leading: IconButton(
        onPressed: () {
          setState(() {
            function();
          });
        },
        icon: Icon(
          iconboolean ? Icons.circle : Icons.circle_outlined,
          color: ConstantColor.lightGreen,
        ),
      ),
      title: TextCustom(Title: title,color: Colors.black,fontSize: 14),
    );
  }
}
