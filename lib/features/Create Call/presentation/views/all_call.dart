import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Text_feld.dart';

class create_call extends StatelessWidget {
  // create_call({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _namePatient = FocusNode();
  final _age =   FocusNode();
  final _phone =   FocusNode();
  final _nameDoctor=FocusNode();
  final _description = FocusNode();


  TextEditingController namePatient = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController nameDoctor = TextEditingController();
  TextEditingController description = TextEditingController();

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
        title:  Text("Create Call",style: Style.style2,),
        centerTitle: true,
      ),
      body:  Form(
        key: _formKey,
        child: ListView(

          children: [
                 Column(
                  children: [
                    SizedBox(height: height*0.02,),
                    Container(
                        width: width*0.914,
                        child: defaultFormField(
                          type2: _namePatient,
                            type: TextInputType.text,
                         hintText: 'Patient Name',
                         controller: namePatient,
                            size_b: 15
                     ),
                   ),
                    SizedBox(height: height*0.02,),
                    Container(
                       width: width*0.914,
                       child: defaultFormField(
                           type2: _age,
                           type: TextInputType.number,
                           hintText: 'age',
                           controller: age,
                           size_b: 15
                       ),
                     ),
                    SizedBox(height: height*0.02,),
                    Container(
                      width: width*0.914,
                      child: defaultFormField(
                          type2: _phone,
                          type: TextInputType.phone,
                          hintText: 'Phone Number',
                          controller: phone,
                          size_b: 15
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    Container(
                      width: width*0.914,
                      child: defaultFormField(
                          type2: _nameDoctor,
                          type: TextInputType.name,
                          hintText: 'Select Doctor',
                          controller: nameDoctor,
                          size_b: 20,
                          suffixIcon: Icons.play_arrow,
                        suffixPressed: (){
                        }
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    Container(
                      width: width*0.914,
                      height: height*.27,
                      child: defaultFormField(
                        type2: _description,
                        type: TextInputType.multiline,
                          hintText: 'Case Description',
                          controller: description,
                          size_b: height*0.2,
                      ),
                    ),
                    SizedBox(height: height*0.15,),
                    Container(
                      // alignment: Alignment.bottomCenter,
                      width: width*0.914,
                        height: height*0.0675,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(backgroundColor: ConstantColor.blue),
                           child: const Text('Send Call'),
                           onPressed: (){
                                    final bool? isValid = _formKey.currentState?.validate();
                                    if (isValid == true) {
                                        debugPrint('Everything looks good!');
                                    }
                           }
                          ))
                   ],
            )
          ],
        ),
      ),
    );
  }
}
