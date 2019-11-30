import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String mapPreviewURL;
  showPreview() {
    return mapPreviewURL == null
        ? Text('No Location Found')
        : Image.network(
            mapPreviewURL,
            fit: BoxFit.cover,
            width: double.infinity,
          );
  }

  Future<void> getCurrentLocation() async {
    final longLat = await Location().getLocation();
    print("lat lng $longLat");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          child: showPreview(),
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('Current Location'),
              onPressed: () {
                getCurrentLocation();
              },
            )
          ],
        )
      ],
    );
  }
}
