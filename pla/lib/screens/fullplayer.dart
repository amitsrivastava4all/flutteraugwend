import 'dart:convert';

import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/song.dart';

class FullPlayer extends StatefulWidget {
  @override
  _FullPlayerState createState() => _FullPlayerState();
}

class _FullPlayerState extends State<FullPlayer> {
  List<Song> songList = [];
  AudioPlayer audioPlayer = AudioPlayer();
  _playSong(String url) async {
    print("Play Song Called $url");
    //await audioPlayer.stop();

    await audioPlayer.play(url);
  }

  void doServerCall() async {
    var result = await http
        .get('https://itunes.apple.com/search?term=jack+johnson&limit=50');
    var jsonData = json.decode(result.body);
    // print(jsonData['results'][0]);
    // print("JSON Data is..  $jsonData  ");

    for (var i = 0; i < jsonData['results'].length; i++) {
      var key = jsonData['results'][i];
      var song = new Song(key['trackName'], key['previewUrl'], key['country'],
          key['artworkUrl30'], key['artistName']);
      songList.add(song);
    }
    setState(() {
      songList = songList;
    });
    print(songList.length);
//    for (var arr in jsonData['results']) {
//      var key = arr[0];
//      var song = new Song(key['trackName'], key['previewUrl'], key['country'],
//          key['artworkUrl30'], key['artistName']);
//      songList.add(song);
//    }
    //print("SOng list is $songList");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    doServerCall();
  }

  @override
  Widget build(BuildContext context) {
    //doServerCall();
    return Container(
        child: ListView.builder(
            itemCount: songList.length,
            itemBuilder: (context, index) {
              return Card(
                //color: Colors.lightBlue,
                elevation: 10,
                child: ListTile(
                    title: Text(
                      songList[index].trackName,
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(songList[index].artistName),
                    trailing: MaterialButton(
                        elevation: 10,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.red,
                          size: 30,
                        ),
                        onPressed: () {
                          _playSong(songList[index].previewUrl);
                        }),
//leading: Container(
//              width: 100,
//              child: Row(
//              children: <Widget>[
//                Text('ABC'), Text('XYZ')
//              ],
//              ),
//              ),
                    leading: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                            image: NetworkImage(songList[index].artworkUrl30)))
                    //                  child: Image(image: NetworkImage(songList[index].artworkUrl30)),
                    ),
              );
            }));
  }
}
