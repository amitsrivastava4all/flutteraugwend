import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/LocationProvider.dart';
import '../screens/cameraimageinput.dart';
import '../screens/locationinput.dart';

class AddLocation extends StatefulWidget {
  static const route = "/add-location";
  @override
  _AddLocationState createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  File selectImage;
  TextEditingController txtCtrl = new TextEditingController();
  giveImage(File file) {
    selectImage = file;
    print("Image Rec $selectImage");
  }

  saveImage() {
    if (txtCtrl.text.isEmpty || selectImage == null) {
      print("Inside Save Image ${txtCtrl.text.isEmpty} Or ${selectImage}");
      return;
    }
    Provider.of<LocationProvider>(context, listen: false)
        .addLocation(txtCtrl.text, selectImage);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Location'),
      ),
      body: Column(
        children: <Widget>[
          TextField(controller: txtCtrl),
          Container(
            child: Text('No Image Added'),
          ),
          CameraImageInput(giveImage),
          RaisedButton(
            child: Text('Add Location'),
            onPressed: () {
              saveImage();
            },
          ),
          SizedBox(height: 30),
          LocationInput()
        ],
      ),
    );
  }
}
