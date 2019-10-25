import 'package:flutter/material.dart';

import './screens/fullplayer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Music Player',
    home: Scaffold(
      appBar: AppBar(
        elevation: 6,
        backgroundColor: Colors.red,
        title: Text(
          'Music Player...',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        //child: ServerCall()
        // child: Player(),
        child: FullPlayer(),
      ),
    ),
  ));
}
