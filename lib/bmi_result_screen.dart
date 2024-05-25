import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final Color? pressedColor = Colors.pink[500];
  final int result;
  final int age;
  final bool isMale;
  const BmiResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: pressedColor,

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${ isMale?'Male':'Female' }",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
