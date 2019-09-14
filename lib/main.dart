import 'package:flutter/material.dart';

import './views/converter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Unit Converter',
    home: Converter(),
  ));
}
