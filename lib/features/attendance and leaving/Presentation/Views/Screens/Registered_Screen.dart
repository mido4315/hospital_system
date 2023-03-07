import 'package:flutter/material.dart';

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

              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFffffff), width: 2)),
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.arrow_right_alt,
                    color: Color(0xFFffffff),
                    size: 40,
                  ),
                  radius: 30,
                ),
              ),
            ],
          ),
        ));
  }
}
