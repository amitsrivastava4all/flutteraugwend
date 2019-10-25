import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MySong {
  String artistName;
  String trackName;
  String previewUrl;
  MySong(this.trackName, this.artistName, this.previewUrl);
}

class ServerCall extends StatefulWidget {
  @override
  _ServerCallState createState() => _ServerCallState();
}

class _ServerCallState extends State<ServerCall> {
  List<MySong> songList = [];
  @override
  initState() {
    super.initState();
    this.callServer();
  }

  callServer() async {
//    Future future  = http.get('https://itunes.apple.com/search?term=jack+johnson&limit=2');
//    future.then((result){
//        // Buy Code
//    })

    var result = await http
        .get('https://itunes.apple.com/search?term=jack+johnson&limit=20');
    var obj = json.decode(result.body);

    print("Obj is $obj");
    var arr = obj['results'];
    List<MySong> songList2 = [];
    for (int i = 0; i < arr.length; i++) {
      var songObj = arr[i];
      MySong song = new MySong(
          songObj['trackName'], songObj['artistName'], songObj['previewUrl']);
      songList2.add(song);
    }
    print("Now SOngList is ");
    for (int i = 0; i < songList2.length; i++) {
      print("Song is ${songList2[i].trackName}");
    }
    setState(() {
      songList = songList2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: songList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                songList[index].trackName,
                style: TextStyle(fontSize: 40),
              ),
            );
          }),
//      child: RaisedButton(
//        onPressed: () {
//          callServer();
//        },
//        child: Text('Call Server'),
//      ),
    );
  }
}
