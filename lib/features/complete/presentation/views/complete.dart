import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgeassets.dart';
class comlete extends StatelessWidget {
 // const comlete({Key? key}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Center(
        child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Image.asset(ImageAssets.complete),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // alignment: Alignment.bottomCenter,
                  width: width*0.914,
                  height: height*0.0675,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: ConstantColor.blue),
                      child: const Text('Back to home'),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                  )),
            ),
          ],) ,
      ),
    );;
  }
}

