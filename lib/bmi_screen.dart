import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final Color? defaultColor = Colors.grey[400];
  final Color? pressedColor = Colors.pink[500];
  bool isMale = true;
  double height = 120.0;
  int weight = 50 , age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      backgroundColor: pressedColor,
      ),
      body: Container(
          child: Column(
            children:
            [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children:
                      [
                        Expanded(
                          child: GestureDetector(
                            onTap: ()
                            {
                              setState(() {
                                isMale = true;
                              });

                            },
                            child: Container(
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),

                                color: isMale? pressedColor: defaultColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      Icons.male ,
                                    size: 70.0,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),

                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()
                            {
                              setState(() {
                                isMale = false;
                                print('Female');
                              });
                            }
                            ,
                            child: Container(
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),

                                color: !isMale? pressedColor: defaultColor,
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                      Icons.female,
                                    size: 70.0,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )

                      ]
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400],
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                        [
                          Text(
                            'HEIGHT',
                                style:TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,

                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${height.round()}',
                                style:TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text(
                                'cm',
                                style:TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ],
                          ),
                         Slider(
                            activeColor: pressedColor,
                             value: height,
                             max: 220.0,
                             min: 80.0,
                             onChanged:
                               (double value)
                             {
                               setState(() {

                               });
                               height = value;
                               print('Slider : ${height}');

                             } ),


                        ]
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children:
                      [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10.0),
                          
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style:TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          
                                ),
                                Text(
                                  '${weight}',
                                  style:TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                    tooltip: 'Weight Decrement',
                                      heroTag: 'Weight-',
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(weight > 1)
                                            {
                                              weight--;
                                            }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(
                                        Icons.remove
                                      ),
                                    ),
                                    FloatingActionButton(
                                      tooltip: 'Weight Increment',
                                      heroTag: 'Weight+',
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(weight < 300)
                                            {
                                              weight++;
                                            }
                                        });
                                      },
                                      mini: true,
                                      // shape: ,
                                      child: Icon(
                                        Icons.add
                                      ),
                          
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10.0),
                          
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style:TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          
                                ),
                                Text(
                                  '${age}',
                                  style:TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                    tooltip: 'Age Decrement',
                                      heroTag: 'Age-',
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(age > 1)
                                          {
                                            age--;
                                          }
                                        });
                                      },
                                      mini: true,
                                      child: Icon(
                                          Icons.remove
                                      ),
                          
                                    ),
                                    FloatingActionButton(
                                      tooltip: 'Age Increment ',
                                      heroTag: 'Age+',
                                      onPressed: ()
                                      {
                                        setState(() {
                                          if(age < 200)
                                          {
                                            age++;
                                          }
                                        });
                                      },
                                      mini: true,
                                      // shape: ,
                                      child: Icon(
                                          Icons.add
                                      ),
                          
                                    )
                                  ],
                                )
                          
                          
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),

              Container(
                height: 50.0,
                width: double.infinity,
                color: pressedColor,

                child: MaterialButton(
                    onPressed: (){
                      var result = weight / pow(height / 100 , 2);
                      print(result.round());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BmiResultScreen(result: result.round(), age: age, isMale: isMale)
                        ),
                      );
                    },
                    child: Text(
                    'CALCULATE'
                    ),
                ),
              )

            ]
          )
      ),
    );
  }
}
