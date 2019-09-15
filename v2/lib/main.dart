import 'package:flutter/material.dart';

import './widgets/unitconverter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Unit Converter App',
    //darkTheme: ThemeData.dark(),
    home: UnitConverter(),
  ));
}
