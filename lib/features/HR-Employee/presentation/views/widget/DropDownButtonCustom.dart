// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:hospital_system/core/constant/FreeWidget.dart';
// import 'package:hospital_system/core/constant/color.dart';
//
// class DropDownButtonCustom extends StatefulWidget {
//   DropDownButtonCustom({required this.hitntitle, required this.icon,required this.listType});
//
//   String hitntitle;
//   IconData icon;
//   List<String> listType;
//
//   @override
//   State<DropDownButtonCustom> createState() => DropDownButtonCustom_s();
// }
//
// class DropDownButtonCustom_s extends State<DropDownButtonCustom> {
//   final List<String> items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//   ];
//   String? selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         margin: EdgeInsets.only(bottom: 10),
//         height: 65,
//         width: PageSize.width(context) * 0.95,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: Colors.black26)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Center(
//               child: Icon(widget.icon,color: ConstantColor.lightGreen,),
//             ),
//             DropdownButton2(
//               isExpanded: true,
//               hint: Row(
//                 children: [
//                   SizedBox(
//                     width: 4,
//                   ),
//                   Expanded(
//                     child: Text(
//                       "${widget.hitntitle}",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black26,
//                       ),
//
//                     ),
//                   ),
//                 ],
//               ),
//               items: widget.listType
//                   .map(
//                     (item) => DropdownMenuItem<String>(
//                   value: item,
//                   child: Text(
//                     item,
//                     style:  TextStyle(
//                       fontSize: 16,
//                       color: ConstantColor.black3,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               )
//                   .toList(),
//               value: selectedValue,
//               onChanged: (value) {
//                 setState(
//                       () {
//                     selectedValue = value as String;
//                   },
//                 );
//               },
//               icon: const Icon(
//                 Icons.arrow_drop_down,
//                 size: 30,
//               ),
//               iconSize: 14,
//               // iconEnabledColor: Colors.yellow,
//               // iconDisabledColor: Colors.grey,
//               buttonHeight: 50,
//               buttonWidth: PageSize.width(context) * 0.8,
//               //buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//               // buttonDecoration: BoxDecoration(
//               //   borderRadius: BorderRadius.circular(10),
//               //   border: Border.all(
//               //     color: Colors.black26,
//               //   ),
//               //   color: ConstantColor.white,
//               // ),
//               buttonElevation: 2,
//               itemHeight: 50,
//               itemPadding: const EdgeInsets.only(left: 14, right: 14),
//               dropdownMaxHeight: 200,
//               dropdownWidth: 200,
//               dropdownPadding: null,
//               dropdownDecoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(14),
//                 color: ConstantColor.white,
//               ),
//               dropdownElevation: 8,
//               scrollbarRadius: const Radius.circular(40),
//               scrollbarThickness: 6,
//               scrollbarAlwaysShow: true,
//               offset: const Offset(20, 0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
