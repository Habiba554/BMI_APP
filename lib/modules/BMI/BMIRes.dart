import 'package:flutter/material.dart';

class BMIRes extends StatelessWidget {

  late bool gender;
  late int age;
  late double res;

  BMIRes({required this.age,required this.gender,required this.res});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 30, 17, 17),
      appBar: AppBar(
      centerTitle: true,
      title: Text("BMI Result"),
          backgroundColor: Color.fromARGB(90, 117, 104, 104)

    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Gender: ${gender?'MALE':'FEMALE'}",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
            Text("Age: ${age}",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),
            Text("Result: ${res.round()}",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),


          ],
        ),
      )
      ,);
  }
}
