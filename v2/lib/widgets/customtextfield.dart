import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  String lbl;
  TextEditingController tc;
  CustomTextField(String hintText, String lbl, TextEditingController tc) {
    this.hintText = hintText;
    this.lbl = lbl;
    this.tc = tc;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tc,
      style: TextStyle(fontSize: 30, color: Colors.black),
      maxLength: 5,
      cursorWidth: 2,
      cursorRadius: Radius.circular(30),
      cursorColor: Colors.red,
      autofocus: true,
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
          labelText: this.lbl,
          hintText: this.hintText,
          helperText: 'Only number allowed here',
          helperStyle: TextStyle(color: Colors.red),
          border: OutlineInputBorder(),
          suffixText: 'FR',
          prefixIcon: Icon(Icons.play_arrow)),
    );
  }
}
