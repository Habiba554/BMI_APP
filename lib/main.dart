import 'package:flutter/material.dart';


import 'modules/BMI/BMI_Calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Bmi(),);
  }

}







