import 'package:flutter/material.dart';
import 'package:hospital_system/features/attendance%20and%20leaving/Presentation/Views/Screens/Attendance%20and%20Leaving_Screen.dart';

class Registered extends StatelessWidget {
  const Registered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF22C7B8),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * .2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, ),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xFFffffff), width: 2)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(Icons.check,size: 120,color: Color(0xFFffffff),),
                            radius: 100,
                          ),
                        ),
                      ),
                      const Text(
                        'Your attendance has been registered',
                        style: TextStyle(
                            color: Color(0xFFffffff),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              // Container(
              //   child: Image.asset('images/FingerPrint/CompositeLayer.png',),
              // ),
              const SizedBox(
                height: 200,
              ),

              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment. center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFffffff), width: 2)),
                      child:  Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon:Icon(Icons.arrow_right_alt,
                            color: Color(0xFFffffff),
                            size: 35,), onPressed: () {
                          Navigator .push(context, MaterialPageRoute(builder: (context)=>AttendanceandLeaving()));
                        } ,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
