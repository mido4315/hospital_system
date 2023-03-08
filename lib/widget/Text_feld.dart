import 'package:flutter/material.dart';
import 'package:hospital_system/core/constant/valator.dart';

Widget defaultFormField(
    {
      TextEditingController? controller,
      required TextInputType? type,
      required String hintText,
      required FocusNode? type2,
      IconData?  prefixIcon,
      IconData?  suffixIcon,
      Function()?  suffixPressed,
      Function()? prefixPressed,
      Function(String)? onFieldSubmitted,
      double?  height ,
      bool isPassword=true,
       required double size_b
    }
    )=>TextFormField(
      validator: (value){
        if(hintText=="Patient Name") {
       return   validator.valditor(name:value!);
        }
        if(hintText=="Search for doctors") {
          return   validator.valditor(name:value!);
        }
        else if(hintText=="age"){
          return validator.valditorAge(age:value!);
        }
        else if(hintText=="Select Doctor"){
          return validator.valditor(name:value!);
        }
        else if(hintText=="Phone Number"){
          return validator.valditorPhone(phone:value!);
        }
        return null;
        }  ,
      //onChanged: (value) => userEmail = value,
    //  textDirection: TextDirection.rtl,
      keyboardType:type,
  focusNode: type2 ,
      controller:controller,
      onFieldSubmitted:onFieldSubmitted,
      decoration:  InputDecoration(
        border: OutlineInputBorder( borderRadius:BorderRadius.circular(8)),
        isDense: true,                      // Added this
        contentPadding:  EdgeInsets.only(bottom:size_b),
        hintText:hintText ,
        // hintStyle: const TextStyle(
        //   fontSize: 14,
        //   fontWeight: FontWeight.w400,
        //   fontFamily: "Cairo",
        // ),
        prefixIcon: IconButton(
          icon: Icon(
            prefixIcon,
          ),
          onPressed: prefixPressed,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            suffixIcon,
          ),
          onPressed:suffixPressed ,
        ),
      ),
    );




