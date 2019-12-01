import 'package:flutter/material.dart';

import '../models/LocationModel.dart';
import '../providers/LocationProvider.dart';
import '../screens/addlocation.dart';
import 'package:provider/provider.dart';

class LocationList extends StatelessWidget {
  List<LocationModel> locations;
  @override
  Widget build(BuildContext context) {
    print("Location List called Again");
    return Scaffold(
      appBar: AppBar(
        title: Text('Location List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Calling the Add Location Route from Here
              Navigator.of(context).pushNamed(AddLocation.route);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<LocationProvider>(context, listen: false).fetch(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Consumer<LocationProvider>(
                child: Center(
                  child: Text('Waiting for Locations'),
                ),
                builder: (context, locationProvider, ch) {
                  print(
                      "Inside Future Builder of List ${locationProvider.locations.length}");
                  return locationProvider.locations.length <= 0
                      ? ch
                      : ListView.builder(
                          itemCount: locationProvider.locations.length,
                          itemBuilder: (ctx, i) {
                            print(
                                "Inside Item Builder $i and ${locationProvider.locations[i]}");
                            return ListTile(
                                onTap: () {},
                                title:
                                    Text(locationProvider.locations[i].title),
                                leading: CircleAvatar(
                                  backgroundImage: FileImage(
                                      locationProvider.locations[i].image),
                                ));
                          });
                }),
      ),
    );
  }
}
