import 'package:flutter/material.dart';

import '../../../../attendance and leaving/Presentation/Views/Widgets/CustomAppBar.dart';
class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Column(
        children: [
          CustomAppBar(),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40),
                child: Column(
                  children: [
                    GestureDetector(
                      child: CustomContainer(
                        ContainerHeight: 240,
                        ContainerWidth: 170,
                        MeniContainerTop: 55,
                        MeniContainerLeft: 35,
                        MeniContainerHeight: 100,
                        MeniContainerWidth: 100,
                        ContainerText: 'Calls',
                        ConColor: Color(0xff5F9EDC),
                        IconImage: 'images/FingerPrint/add.png',
                      ),
                      onTap: (){

                      },
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: CustomContainer(
                        ContainerHeight: 190,
                        ContainerWidth: 170,
                        MeniContainerTop: 38,
                        MeniContainerLeft: 35,
                        MeniContainerHeight: 100,
                        MeniContainerWidth: 100,
                        ContainerText: 'Reports',
                        ConColor: Color(0xff915FDC),
                        IconImage: 'images/FingerPrint/document.png',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 40),
                child: Column(
                  children: [
                    GestureDetector(
                      child: CustomContainer(
                        ContainerHeight: 190,
                        ContainerWidth: 170,
                        MeniContainerTop: 38,
                        MeniContainerLeft: 35,
                        MeniContainerHeight: 100,
                        MeniContainerWidth: 100,
                        ContainerText: 'Tasks',
                        ConColor: Color(0xff5FDC89),
                        IconImage: 'images/FingerPrint/checkbox.png',
                      ),
                      onTap: (){

                      },
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: CustomContainer(
                        ContainerHeight: 240,
                        ContainerWidth: 170,
                        MeniContainerTop: 50,
                        MeniContainerLeft: 10,
                        MeniContainerHeight: 100,
                        MeniContainerWidth: 100,
                        ContainerText: 'Attendance - leaving',
                        ConColor: Color(0xff5FDCDC),
                        IconImage: 'images/FingerPrint/fingerprint.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}

class CustomContainer extends StatelessWidget {
  double ContainerWidth;
  double ContainerHeight;
  double MeniContainerWidth;
  double MeniContainerHeight;
  String IconImage;
  String ContainerText;
  Color ConColor;
  double MeniContainerTop;
  double MeniContainerLeft;




   CustomContainer({
   required this.ContainerHeight,
    required this.ContainerWidth,
    required this.MeniContainerHeight,
    required this.MeniContainerWidth,
     required this.MeniContainerTop,
     required this.MeniContainerLeft,
    required this.IconImage,
     required this.ConColor,
     required this.ContainerText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[ Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ConColor,
        ),
        width: ContainerWidth,
        height: ContainerHeight,
        ),
        Positioned(
          top: MeniContainerTop,
          left: MeniContainerLeft,
          child: Column(
            children: [
              Container(
                width: MeniContainerWidth,
                height: MeniContainerHeight,
                decoration: BoxDecoration(
                  color: ConColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)
                ),
                child: Image.asset(IconImage,scale:2),
              ),
              SizedBox(height: 5,),
              Text(ContainerText,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
    ],
    );
  }
}
