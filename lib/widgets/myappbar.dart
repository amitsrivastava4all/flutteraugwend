import 'package:flutter/material.dart';

class MyAppBar {
  static AppBar getAppBar() {
    return AppBar(
      elevation: 10,
      leading: Icon(Icons.camera),
      actions: <Widget>[
        Icon(Icons.email),
        Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        Icon(Icons.phone)
      ],
      backgroundColor: Colors.redAccent,
      title: Text(
        'Unit Converter App',
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
