// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'screens/inputpage.dart';


void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(bodyText1: TextStyle(
          color: Colors.white,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

