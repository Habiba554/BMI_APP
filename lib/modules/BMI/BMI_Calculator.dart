
import 'dart:math';

import 'package:flutter/material.dart';

import 'BMIRes.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
   late bool isMale=true;
   late double height=120.0;
   late double weight=30;
   late int age=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(200, 30, 17, 17),
      appBar: AppBar(
      centerTitle: true,
      title:const Text("BMI CALCULATOR"),
        backgroundColor: const Color.fromARGB(90, 117, 104, 104),
    )
      ,body: Column(
      children: [
         Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale?const Color.fromARGB(218, 103, 96, 103):const Color.fromARGB(205, 63, 60, 63)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage('Images/Male.png'),
                          height: 90.0,width: 90.0,),
                          SizedBox(height: 10.0,),
                          Text("MALE",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),

                ],
              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !isMale?const Color.fromARGB(218, 103, 96, 103):const Color.fromARGB(205, 63, 60, 63)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(image: AssetImage('Images/FEMALE.png'),
                              height: 90.0,width: 90.0,),
                            SizedBox(height: 10.0,),
                            Text("FEMALE",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:const Color.fromARGB(205, 63, 60, 63)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("HEIGHT",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}",style: const TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900,color: Colors.white),),
                        const Text("cm",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),

                      ],
                    ),
                    Slider(value:height, min:80, max:220,
                        onChanged:(value) {
                      setState(() {
                        height=value;
                      });
                    },
                    activeColor:const Color.fromARGB(218, 103, 96, 103),
                    thumbColor:const Color.fromARGB(255, 128, 35, 99),
                    inactiveColor:const Color.fromARGB(187, 173, 162, 173),)
                  ],
                ),
              ),
            )
        ) ,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromARGB(205, 63, 60, 63)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("${weight.round()}",style:const TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: ()
                            {
                              setState(() {
                                if(weight <= 0)
                                  weight=0;
                                else
                                  {
                                    weight--;
                                  }
                              });
                            },backgroundColor:const Color.fromARGB(187, 173, 162, 173),child:const Icon(Icons.remove),),
                            const SizedBox(width: 15.0,),
                            FloatingActionButton(onPressed: ()
                            {
                              setState(() {
                                weight++;
                              });
                            },backgroundColor:const Color.fromARGB(187, 173, 162, 173),child: const Icon(Icons.add),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:const Color.fromARGB(205, 63, 60, 63)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("AGE",style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("$age",style: const TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900,color: Colors.white),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: ()
                            {
                              setState(() {
                                if(age>0)
                                  {
                                    age--;
                                  }
                                else
                                  {
                                    age=0;
                                  }
                              });
                            },backgroundColor: const Color.fromARGB(187, 173, 162, 173),child:const Icon(Icons.remove),),
                            const SizedBox(width: 15.0,),
                            FloatingActionButton(onPressed: ()
                            {
                              setState(() {
                                age++;
                              });
                            },backgroundColor:const Color.fromARGB(187, 173, 162, 173),child:const Icon(Icons.add),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
        color: const Color.fromARGB(187, 128, 35, 99),
        width: double.infinity,
        height: 50.0,
        child: MaterialButton(onPressed: (){
          double res=weight/pow(height/100,2);
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>BMIRes(age: age,gender: isMale,res: res,)));
        }
        ,child:const Text("Calculate",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),),
        ),

      ],
    )
      ,);
  }
}
//bme=weight/pow(height/100,2);
//print(bme.round())
