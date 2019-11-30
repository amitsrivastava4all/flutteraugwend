import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/LocationProvider.dart';
import './screens/addlocation.dart';
import './screens/locationlist.dart';

void main() {
  runApp(ChangeNotifierProvider.value(
    value: LocationProvider(),
    child: MaterialApp(
      title: 'Location App',
      home: LocationList(),
      routes: {AddLocation.route: (ctx) => AddLocation()},
    ),
  ));
}
