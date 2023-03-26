import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgeassets.dart';
import '../../../../core/constant/style.dart';
import '../../../../widget/Text_feld.dart';
import '../../../../widget/one_doctor.dart';

class Select_Doctor extends StatefulWidget {
  final title;

  Select_Doctor(this.title);

  @override
  State<Select_Doctor> createState() => _Select_DoctorState();
}

class _Select_DoctorState extends State<Select_Doctor> {
  final _formKey = GlobalKey<FormState>();

  final _namePatient = FocusNode();

  String _selectedGender = '1';

  // widget.title =="Calls" ?"- Doctor":sp;
  var sp = "";
  var sp2 = "";

  TextEditingController namePatient = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    if (widget.title == 'Select Doctor') {
      sp = "Doctor";
      sp2 = "Doctor";
    } else if (widget.title == 'Select Analysis employee') {
      sp = 'Nurse';
      sp2 = "Analysis employee";
    }
    return Scaffold(
      backgroundColor: ConstantColor.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: ConstantColor.black3,
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: ConstantColor.white,
        title: Text(
          widget.title,
          style: Style.style2,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  width: width * 0.914,
                  child: defaultFormField(
                      type2: _namePatient,
                      type: TextInputType.text,
                      hintText: 'Search for $sp2',
                      controller: namePatient,
                      prefixIcon: Icons.search,
                      size_b: 20),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    one_doctor(
                        ImageAssets.d1, width, "Dr. Salma Ahmed", "- $sp"),
                    f("1")
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      one_doctor(
                          ImageAssets.d2, width, "Dr. Hend Ali", "- $sp"),
                      f("2")
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    one_doctor(
                        ImageAssets.d3, width, "Dr. Islam Ahmed", "- $sp"),
                    f("3")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    one_doctor(
                        ImageAssets.d4, width, "Dr. Helmy Ahmed", "- $sp"),
                    f("4")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    one_doctor(
                        ImageAssets.d5, width, "Dr. Shawky Haleem", "- $sp"),
                    f("5")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    one_doctor(ImageAssets.d3, width, "Dr. Ali Ahmed", "- $sp"),
                    f("6")
                  ],
                ),
                SizedBox(
                  height: height * 0.15,
                ),
                Container(
                    // alignment: Alignment.bottomCenter,
                    width: width * 0.914,
                    height: height * 0.0675,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ConstantColor.blue),
                        child: const Text('Send Call'),
                        onPressed: () {
                          final bool? isValid =
                              _formKey.currentState?.validate();
                          if (isValid == true) {
                            debugPrint('Everything looks good!');
                          }
                        }))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget f(valuel) {
    return Radio<String>(
      activeColor: ConstantColor.blue,
      value: '$valuel',
      groupValue: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value!;
        });
      },
    );
  }
}
