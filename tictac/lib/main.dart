import 'package:flutter/material.dart';

import './tic.dart';

void main() {
  runApp(MaterialApp(
    title: 'TicTacToe-2019',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('TicTacToe-2019'),
        elevation: 5,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      //body: Tic(),
      body: Stack(
        children: <Widget>[
          Tic(),
          //      Container(decoration: ShapeDecoration(shape: UnderlineInputBorder(borderRadius: 2,borderSide: Border(left: ))),)
//          Positioned(
//              height: 200,
//              width: 200,
//              top: 500,
//              left: 100,
//              child: Text(
//                'HELLO',
//                style: TextStyle(fontSize: 40),
//              ))
        ],
      ),
    ),
  ));
}
