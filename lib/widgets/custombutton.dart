import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String lbl;
  Function operation;
  CustomButton(this.lbl, this.operation) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        elevation: 10,
        onPressed: () {
          operation(this.lbl);
        },
        color: Colors.lightBlue,
        child: Text(
          this.lbl,
          style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              backgroundColor: Colors.yellowAccent),
        ),
      ),
    );
  }
}
