import 'package:flutter/material.dart';
import '../../../../../core/constant/style.dart';

List<String> list = <String>['Blood Pressure', 'Sugar analysis'];

class CustomDropdownList extends StatefulWidget {
  const CustomDropdownList({super.key});

  @override
  State<CustomDropdownList> createState() => _CustomDropdownListState();
}

class _CustomDropdownListState extends State<CustomDropdownList> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: MediaQuery.of(context).size.width / 2 - 25,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color(0xFFE3E3E3),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          //isDense:true,
          value: dropdownValue,
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.black,
            size: 35,
          ),
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
