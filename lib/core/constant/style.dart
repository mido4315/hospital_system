import 'package:flutter/material.dart';



class Style {
  static const TextStyle stylee = TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontFamily: 'poppins',
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    color: Color(0xff22C7B8),
    fontFamily: 'poppins',
  );
  static const TextStyle buttonText2 = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'poppins',
  );
  static const TextStyle appBarText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff343434),
    fontFamily: 'poppins',
  );
  static const TextStyle textLabel = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(0, 0, 0, 0.5),
    fontFamily: 'poppins',
  );
  static const TextStyle style1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0XFF2c2c2c),
    fontFamily: 'poppins',
  );
  static const TextStyle style2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0XFF343434),
    fontFamily: 'poppins',
  );
  static const TextStyle style3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xff2c2c2c),
    fontFamily: 'poppins',
  );
  static  TextStyle style4 =  TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.green[50]
    ,
    fontFamily: 'poppins',
  );
  static  TextStyle styleO =  TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.green[50]
    ,
    fontFamily: 'poppins',
  );
  static  TextStyle style5 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Cairo-Black',
  );

  static OutlineInputBorder  style6 = const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))) ;
  static ThemeData def = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
          height: 2,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.orangeAccent,
          fontSize:18,
        )),
    fontFamily: 'PlayfairDisplay',

  );
  static ThemeData englishTheme = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
          height: 2,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
          fontSize:18,
        )),
    fontFamily: 'PlayfairDisplay',
    backgroundColor: Colors.orange,
    primaryColor: Colors.tealAccent,
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.tealAccent,

  );
  static ThemeData arabicTheme = ThemeData(
    textTheme: const TextTheme(
        headline1: TextStyle(
          height: 2,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
          fontSize: 12,
        )),
    fontFamily: 'Cairo',
    backgroundColor: Colors.orange,
    primaryColor: Colors.teal,
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.pink,
  );
}
