import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/FreeWidget.dart';
import 'package:hospital_system/core/constant/color.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/DropDownButtonCustom.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/Employe%20Custom%20Lists.dart';
import 'package:hospital_system/features/HR-Employee/presentation/views/widget/textFormField.dart';

import '../../../../widget/ElevatedButtonCustom.dart';

class NewHRuser extends StatefulWidget {
  const NewHRuser({Key? key}) : super(key: key);

  @override
  State<NewHRuser> createState() => _NewHRuserState();
}

class _NewHRuserState extends State<NewHRuser> {
  TextEditingController Con_FristName = TextEditingController();
  TextEditingController Con_LastName = TextEditingController();
  TextEditingController Con_Phone = TextEditingController();
  TextEditingController Con_Email = TextEditingController();
  TextEditingController Con_Address = TextEditingController();
  TextEditingController Con_Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                top: 0,
                child: Image(
                  image: AssetImage('assets/Sign_In/backimage1.png'),
                ),
              ),
              const Positioned(
                right: 0,
                bottom: 0,
                child: Image(
                  image: AssetImage('assets/Sign_In/backimage2.png'),
                ),
              ),
              Container(
                width: PageSize.width(context) * 0.98,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'New User',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    newformFieldCustom(
                        hintText: 'Frist Name',
                        controller: Con_FristName,
                        passmode: false,
                        errorText: 'try again',
                        iconData: Icons.perm_identity_rounded),
                    newformFieldCustom(
                        controller: Con_LastName,
                        hintText: 'Last Name',
                        errorText: 'try Again',
                        passmode: false,
                        iconData: Icons.perm_identity),
                    // DropDownButtonCustom(
                    //     hitntitle: 'Gender',
                    //     icon: Icons.male,
                    //     listType: EmployeeLists.Gender),
                    // DropDownButtonCustom(
                    //     hitntitle: 'Specialist',
                    //     icon: Icons.camera_alt_outlined,
                    //     listType: EmployeeLists.Specialist),
                    // DropDownButtonCustom(
                    //     hitntitle: 'Date of Birth',
                    //     icon: Icons.date_range,
                    //     listType: EmployeeLists.DataOfBirth),
                    // DropDownButtonCustom(
                    //     hitntitle: 'Statues',
                    //     icon: Icons.heart_broken_sharp,
                    //     listType: EmployeeLists.Statues),
                    newformFieldCustom(
                        controller: Con_Phone,
                        hintText: 'Phone Number',
                        errorText: 'Try Again',
                        passmode: false,
                        iconData: Icons.settings_phone_outlined),
                    newformFieldCustom(
                        controller: Con_Email,
                        hintText: 'E-Mail',
                        errorText: 'Try Again',
                        passmode: false,
                        iconData: Icons.mail_outline),
                    newformFieldCustom(
                        controller: Con_Address,
                        hintText: 'Address',
                        errorText: 'Try Again',
                        passmode: false,
                        iconData: Icons.location_on),
                    newformFieldCustom(
                        controller: Con_Password,
                        hintText: 'Password',
                        errorText: 'try Again',
                        passmode: true,
                        iconData: Icons.lock_outline),
                    ElevatedButtonCustom(onpressed: () {
                      print('scsdcshdic');
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ElevatedButtonCustom({required Function onpressed}) {
    return ElevatedButton(
        onPressed: () {
          onpressed();
          print('down');
          Show.snackBar(
              context: context, content: 'New User Added', duration: 2);
        },
        style: ElevatedButton.styleFrom(primary: ConstantColor.lightGreen),
        child: Container(
          height: 50,
          width: PageSize.width(context) * 0.9,
          child: Center(child: Text('Create User')),
        ));
  }
  // Widget eee({required Function ss}){
  //   return ElevatedButtonCustom(
  //       onpressed: () {
  //         ss();
  //         print('done');
  //         Show.snackBar(context: context, content: 'New User Added',duration: 2);
  //       },
  //       height: 50,
  //       width: PageSize.width(context) * 0.9,
  //       cneterTitle: 'Create User',
  //       buttonColor: ConstantColor.lightGreen);
  // }
}
