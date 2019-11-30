import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as pathprovider;

class CameraImageInput extends StatefulWidget {
  Function onPickImage;
  CameraImageInput(this.onPickImage);
  @override
  _CameraImageInputState createState() => _CameraImageInputState();
}

class _CameraImageInputState extends State<CameraImageInput> {
  File _imageFile;
  Future<void> takePicture() async {
    File imageFile =
        await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 300);
    setState(() {
      _imageFile = imageFile;
    });
    final fileName = path.basename(imageFile.path); // get the file name
    final applicationDirectory = await pathprovider
        .getApplicationDocumentsDirectory(); // get the directiry path
    final savedImage =
        await imageFile.copy('${applicationDirectory.path}/${fileName}');
    widget.onPickImage(savedImage); // this.onPickImage(saveImage);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 50,
          height: 50,
        ),
        Container(
          height: 100,
          width: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 2, color: Colors.black)),
          child: _imageFile != null
              ? Image.file(_imageFile)
              : Text('No Image Present'),
        ),
        SizedBox(
          width: 50,
          height: 50,
        ),
        RaisedButton(
          child: Text('Take Picture'),
          onPressed: () {
            takePicture();
          },
        )
      ],
    );
  }
}
