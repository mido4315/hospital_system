import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_system/features/report/presentation/views/widgets/custombutton.dart';
import '../../../../core/constant/style.dart';
import '../../../report/presentation/views/widgets/customtextformfield.dart';
import 'customdropdownlist.dart';
class AddMeasurementContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text('Add measurement',style: Style.measurementStyle1,),
         const SizedBox(height: 20,),
          Row(
            children: [
            const CustomDropdownList(),
              const SizedBox(width: 10,),
               SizedBox(
                width: MediaQuery.of(context).size.width/2-25,
                  child: CustomTextFormField(label: "add value"))

          ],),
         const SizedBox(height: 20,),
          CustomTextFormField(label: "Add Note",maxLine: 5,color:const Color(0xffEFEFEF),),
          const SizedBox(height: 20,),
          CustomButton(label: 'Add measurement', color:const Color(0xff22C7B8), onPressed: (){},
            style:  Style.style1.copyWith(color: Colors.white),height: 48,radius: 5,),
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