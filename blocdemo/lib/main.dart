import 'package:flutter/material.dart';
import './screens/calc.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('BLOC Example'),),
      body: Calc(),
    ),
  ));
}
