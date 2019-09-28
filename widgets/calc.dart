import 'package:flutter/material.dart';

import './custombutton.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int result = 0;
  int firstNumber = 0;
  int secondNumber = 0;
  void compute(String operation) {
    setState(() {
      if (operation == '+') {
        result = firstNumber + secondNumber;
      } else if (operation == '-') {
        result = firstNumber - secondNumber;
      }
    });

    print("Result is $result");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Called....");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calc App',
          style: TextStyle(fontSize: 30, color: Colors.yellowAccent),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.all(30),
        color: Colors.lightGreen,
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (str) {
                firstNumber = int.parse(str);
              },
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(labelText: 'First Number'),
            ),
            TextField(
              onChanged: (str) {
                secondNumber = int.parse(str);
              },
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(labelText: 'Second Number'),
            ),
            CustomButton('+', compute),
            CustomButton('-', compute),
            CustomButton('*', compute),
            CustomButton('/', compute),
            SizedBox(height: 50),
            Text(
              'Result is $result',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )
          ],
        ),
//        child: Text(
//          'Calc App',
//          style: TextStyle(fontSize: 30),
//        ),
      ),
    );
  }
}
