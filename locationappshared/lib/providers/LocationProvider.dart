import 'dart:io';

import 'package:flutter/foundation.dart';

import '../db/locationdb.dart';
import '../models/LocationModel.dart';

class LocationProvider with ChangeNotifier {
  List<LocationModel> locations = [];

  addLocation(String locationName, File imagePath) {
    LocationModel lm = LocationModel(
        id: DateTime.now().toString(),
        title: locationName,
        location: null,
        image: imagePath);
    locations.add(lm);
    notifyListeners();
    LocationDB.insert('locations',
        {'id': lm.id, 'title': lm.title, 'imagepath': lm.image.path});
  }

  Future<void> fetch() async {
    final locationsAll = await LocationDB.getData('locations');
    this.locations = locationsAll
        .map((location) => LocationModel(
            id: location['id'],
            title: location['name'],
            image: location['imagepath']))
        .toList();
    notifyListeners();
  }

  List<LocationModel> getLocation() {
    return [...locations];
  }
}
