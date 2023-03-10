import 'package:flutter/material.dart';
import 'package:hospital_system/features/Doctor%20,%20Case/Presention/Viwes/Screens/CaseDetails%20red.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constant/Provider_Data.dart';
import 'TextWIDGET.dart';

const Color color = Colors.grey;

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 3, 10),
                child: Visibility(
                  visible: _isVisible,
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFFDE7D9),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 6, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'You have request',
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                                IconButton(
                                    onPressed: () {
                                      showToast();
                                    },
                                    icon: const Icon(Icons.close_rounded))
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text(
                                '''You have a new request from the doctor, please
 follow up and implement the request as soon as possible'''),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(80, 40),
                                    primary: Colors.deepOrange),
                                onPressed: () {},
                                child: const Text('show Details'))
                          ],
                        ),
                      )),
                )),
            TextWidgets(
              title: 'Patient Name',
              subtitle: 'Ebrahim Khaled',
            ),
            TextWidgets(
              title: 'Age',
              subtitle: '24 years',
            ),
            TextWidgets(
              title: 'phone number',
              subtitle: '254110241423',
            ),
            TextWidgets(
              title: 'Date',
              subtitle: '24,04,2021',
            ),
            TextWidgets(
              title: 'Doctor',
              subtitle: 'Salma Ahmed',
            ),
            TextWidgets(
              title: 'Nurse',
              subtitle: 'Ali islam',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Status', style: TextStyle(color: color)),
                  Row(
                    children: const [
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
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'Case Description',
                    style: TextStyle(color: color),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Row(
                children: const [
                  Text('''
 Details note : Lorem Ipsum is simply dummy
 text of the printing and typesetting industry.
 Lorem Ipsum has been the industry's ''')
                ],
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Provider.of<Provider_data>(context).Prototype == 0
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(370, 53),
                      primary: const Color(0xFF22C7B8),
                    ),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>CaseDetailsred()));
                    },
                    child: const Text('Call Doctor'))
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
