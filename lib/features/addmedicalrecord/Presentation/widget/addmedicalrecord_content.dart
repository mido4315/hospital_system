import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_system/features/report/presentation/views/widgets/custombutton.dart';
import '../../../../core/constant/style.dart';

class AddAddMedicalRecordContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
         const Text('Add medical record',style: Style.measurementStyle1,),
         const SizedBox(height: 20,),
          DottedBorder(
            color: Colors.grey.withOpacity(0.5),
            strokeWidth: 1,
            dashPattern: const [
              10,
              10,
            ],
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 210,
              child: Column(
                children: [
                  Image.asset('images/report.png'),
                  const SizedBox(height: 10,),
                 CustomButton(label: "+  Upload Image",style:Style.buttonText,
                     color: Colors.white,width: 200, onPressed: (){},borderColor: Color(0xff22C7B8),
                   borderWidth: 1,
                 ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          CustomButton(label: 'Add record', color:const Color(0xff22C7B8), onPressed: (){},
            style:  Style.style1.copyWith(color: Colors.white),height: 48,radius: 5,borderColor: Color(0xff22C7B8)),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(label: 'Accept', color:const Color(0xff1AD672), onPressed: (){},
                style:  Style.style1.copyWith(color: Colors.white),height: 48,width: 98,radius: 5,
                icon: Icons.check_circle_outline ,

              ),
            const  SizedBox(width: 10,),
              CustomButton(label: 'Busy', color:const Color(0xffEC9511), onPressed: (){},
                style:  Style.style1.copyWith(color: Colors.white),height: 48,width: 98,radius: 5,
                icon: Icons.cancel_outlined ,
              ),
            ],
          )
        ],
      )
    );
  }

}