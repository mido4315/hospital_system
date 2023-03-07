import 'package:flutter/material.dart';

import '../../../../../core/constant/style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.title,required this.isChecked,required this.date});
final String title;
final bool isChecked;
final String date;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           ListTile(
                title:  Text(title,style: Style.stylee,),
                subtitle:  Text(date,style: const TextStyle(color: Color(0xff22C7B8),fontSize: 10),),
                trailing:  isChecked==true? Image.asset('images/check.png'):Image.asset('images/check2.png'),
              ),
          Padding(
            padding: const EdgeInsets.all(10),
              child: Image.asset('images/arrow.png')),

            ],
          ));
  }


}
