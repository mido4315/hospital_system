import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/constant/style.dart';
import 'widgets/custombutton.dart';
import 'widgets/customtextformfield.dart';
import 'widgets/dropdownlist.dart';

class CreateReport extends StatelessWidget{
  const CreateReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
            color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.002) ,
        centerTitle: true,
        title: const Text("Create Report",style: Style.appBarText,),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
          children: [
            Column(
              children: [
              CustomTextFormField(label: "Report Name",),
              const SizedBox(height: 25,),
              const DropdownList(),
              const SizedBox(height: 25,),
              CustomTextFormField(label: "Description",maxLine: 3,),
              const SizedBox(height: 25,),
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
                      Image.asset('images/re.png'),
                      const SizedBox(height: 10,),
                      CustomButton(label: "+  Upload Image",style:Style.buttonText, color: Colors.white,width: 165, onPressed: (){}),
                    ],
                  ),
                ),
              ),
            ],),
            const SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height/5,
              child: Align(
                alignment: Alignment.bottomCenter,
              child: CustomButton(label: "Create Report" ,style:Style.buttonText2, color: const Color(0xff22C7B8), onPressed: (){})),
            ),
        ],
      ),
      ),
    );
  }

}