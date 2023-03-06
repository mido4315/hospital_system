import 'package:flutter/material.dart';

import 'CaseDetails.dart';
import 'Cases.dart';
import 'TextWIDGET.dart';
class CaseDetailsred extends StatelessWidget {
  const CaseDetailsred({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidgets(title: 'Patient Name', subtitle: 'Ebrahim Khaled',),
          TextWidgets(title: 'Age', subtitle: '24 years',),
          TextWidgets(title: 'phone number', subtitle: '254110241423',),
          TextWidgets(title: 'Date', subtitle: '24,04,2021',),
          TextWidgets(title: 'Doctor', subtitle: 'Salma Ahmed',),
          TextWidgets(title: 'Nurse', subtitle: 'Ali islam',),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Status',style: TextStyle(color: color)),
                Row(
                  children: [
                    Text('Process'),
                    Icon(
                      Icons.timelapse_rounded,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(8,0,0,0),
            child: Row(
              children: [
                Text('Case Description',style: TextStyle(color: color),textAlign: TextAlign.left,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5,0,0,0),
            child: Row(
              children: [
                Text('''
 Details note : Lorem Ipsum is simply dummy
 text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's ''')
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              SizedBox(
                width: 152,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),

                        primary: Color(0xFF22C7B8)),
                    onPressed: () {},
                    child:Row(
                      children: [
                        Icon(Icons.add,size: 40,),
                        Text('Add Nurse',),
                      ],
                    )),
              ),
              SizedBox(
                width: 150,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        primary: Color(0xFF22C7B8)),
                    onPressed: () {},
                    child:Row(
                      children: [
                        Icon(Icons.add,size: 40,),
                        Text('Request',),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 150,),
          ElevatedButton(

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                minimumSize: Size(370, 53),
                primary: Color(0xFFE63A3A),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cases()));
              }, child: Text('End Case'))


        ],
      ),
    );
  }
}
