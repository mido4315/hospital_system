import 'package:flutter/material.dart';
import 'package:hospital_system/features/Doctor%20,%20Case/Presention/Viwes/Screens/CaseDetails%20red.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constant/Provider_Data.dart';
import 'TextWIDGET.dart';
const Color color =Colors.grey;
class CaseDetails extends StatefulWidget {
  const CaseDetails({Key? key}) : super(key: key);

  @override
  State<CaseDetails> createState() => _CaseDetailsState();
}

class _CaseDetailsState extends State<CaseDetails> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 6, 10),
                child: Visibility(
                  visible: _isVisible,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFDE7D9),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 6, 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'You have request',
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                                IconButton(
                                    onPressed: () {
                                      showToast();
                                    },
                                    icon: Icon(Icons.close_rounded))
                              ],
                            ),

                            Text('''You have a new request from the doctor, please follow up and implement the request as soon as possible'''),
                            SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(80, 40),
                                    primary: Colors.deepOrange),
                                onPressed: () {},
                                child: Text('show Details'))
                          ],
                        ),
                      )),
                )),

            TextWidgets(title: 'Patient Name', subtitle: 'Ebrahim Khaled',),
            TextWidgets(title: 'Age', subtitle: '24 years',),
            TextWidgets(title: 'phone number', subtitle: '254110241423',),
            TextWidgets(title: 'Date', subtitle: '24,04,2021',),
            TextWidgets(title: 'Doctor', subtitle: 'Salma Ahmed',),
            TextWidgets(title: 'Nurse', subtitle: 'Ali islam',),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text('Case Description',style: TextStyle(color: color),textAlign: TextAlign.left,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Row(
                children: [
                  Text('''
 Details note : Lorem Ipsum is simply dummy
 text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's ''')
                ],
              ),
            ),
            SizedBox(height: 150,),
            Provider.of<Provider_data>(context).Prototype ==0? ElevatedButton(

              style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)
                ),
                 minimumSize: Size(370, 53),
                 primary: Color(0xFF22C7B8),
               ),
          onPressed: (){

                 }, child: Text('Call Doctor')):SizedBox()



          ],
        ),
      ),
    );
  }
}

