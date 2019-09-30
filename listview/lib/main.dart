import 'package:flutter/material.dart';

import './widgets/listviewdemo.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(backgroundColor: Color.fromARGB(255, 100, 90, 100)),
    title: 'Basic Calc',
    home: ListViewDemo(),
  ));
}
