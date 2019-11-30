import 'dart:io';

import 'package:flutter/foundation.dart';

class Cordinates {
  double lat;
  double lng;
  String address;
  Cordinates(this.lat, this.lng, this.address);
}

class LocationModel {
  String id;
  String title;
  File image;
  Cordinates location;
  @override
  String toString() {
    return "Id $id Title $title Image $image\n";
  }

  LocationModel(
      {@required this.id,
      @required this.title,
      @required this.location,
      @required this.image});
}
