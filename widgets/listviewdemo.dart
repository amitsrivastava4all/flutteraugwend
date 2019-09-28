import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  final List<String> arr = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H"
  ];

  Widget _buildTile(pos) {
    return ListTile(
      onTap: () {
        print("U clicked on ${arr[pos]}");
      },
      title: Text(arr[pos]),
      leading: Icon(Icons.play_arrow),
      subtitle: Text('Hello this is Sub title'),
      trailing: CircleAvatar(
        backgroundColor: Colors.redAccent,
        child: Text(arr[pos]),
      ),
    );
  }

  Widget _buildCard(pos) {
    return Card(
      child: _buildTile(pos),
      elevation: 10,
      color: pos % 2 == 0 ? Colors.redAccent : Colors.tealAccent,
      shape: pos % 2 == 0
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
          : RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Demo'),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (buildContext, pos) {
                return _buildCard(pos);
                //return _buildTile(pos);
                //return Text(arr[pos]);
                //return ListTile(title: Text(arr[pos]));
              })),
    );
  }
}
