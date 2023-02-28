import 'package:flutter/material.dart';

import '../../../../../core/constant/style.dart';
import '../../model/employee.dart';


Employee emp =Employee(name: 'Ebrahem Elzainy',title: 'Specialist',role: 'Doctor');
Employee emp2 =Employee(name: 'Ahmed Elzainy',title: 'Specialist',role: 'Doctor');
Employee emp3 =Employee(name: 'Hassan Elzainy',title: 'Specialist',role: 'Doctor');
 List<String> list = <String>['Select Employee', emp.name,emp2.name, emp3.name];

class DropdownList extends StatefulWidget {


  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color(0xFFE3E3E3),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded:true,
          //isDense:true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_right,color: Color(0xff7A7A7A),size: 35,),
          elevation: 16,
          style: Style.stylee,
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
