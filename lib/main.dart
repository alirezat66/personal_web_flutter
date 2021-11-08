import 'package:flutter/material.dart';
import 'package:personal_website/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff191c26),
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 55,
              fontWeight: FontWeight.w800),
          headline2: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 45,
              fontWeight: FontWeight.w800),
          headline3: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
          headline5: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600),
          subtitle1: TextStyle(
              color: Color(0xffA9AFC3),
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
          subtitle2: TextStyle(
              color: Color(0xff8B91A1),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
          caption: TextStyle(
              color: Color(0xff7e7e7e),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300),
        ),
      ),
      initialRoute: 'main',
      routes: {
        'main': (context) => MainScreen(),
      },
    );
  }
}
