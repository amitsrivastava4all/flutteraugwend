import 'package:flutter/material.dart';

class Tic extends StatefulWidget {
  @override
  _TicState createState() => _TicState();
}

class _TicState extends State<Tic> {
  List<List<String>> grid = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];
  bool isXorZero = false;
  Widget _buildTicButton(rowNumber, buttonIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (grid[rowNumber][buttonIndex] == '') {
            grid[rowNumber][buttonIndex] = isXorZero ? "X" : "0";

            isXorZero = !isXorZero;
            print("Array is $grid");
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 2, color: Colors.black)),
        child: Text(
          grid[rowNumber][buttonIndex],
          style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              decoration: TextDecoration.none),
        ),
        padding: EdgeInsets.all(25),
        // color: Colors.black,
        width: 100,
        height: 100,
      ),
    );
  }

  Widget _buildRow(int rowNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildTicButton(rowNumber, 0),
        _buildTicButton(rowNumber, 1),
        _buildTicButton(rowNumber, 2)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[_buildRow(0), _buildRow(1), _buildRow(2)],
    );
  }
}
