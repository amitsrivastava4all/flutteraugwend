import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import './customtextfield.dart';

class UnitConverter extends StatelessWidget {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();
  void compute() {
    print("Compute Call");
    int fr = int.parse(t1.text);
    double ce = (fr - 32) * 5 / 9;
    t2.text = ce.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.email),
        actions: <Widget>[
          Icon(Icons.add),

//          Padding(
//            padding: EdgeInsets.only(right: 10),
//          ),
          Icon(Icons.person)
        ],
        title: Text(
          'Unit Converter',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
          SpinKitPouringHourglass(
            color: Colors.red,
            size: 60,
          ),
          SpinKitRotatingCircle(
            color: Colors.redAccent,
            size: 50.0,
          ),
//          Card(
//            elevation: 10,
//            color: Colors.tealAccent,
//            child: Image(image: AssetImage('images/winter.jpg')),
//            shape:
//                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          CustomTextField('Type FR', 'FR', t1),
          CustomTextField('Type CE', 'CE', t2),
          RaisedButton(
            color: Colors.redAccent,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: compute,
            splashColor: Colors.yellowAccent,
            child: Text(
              'Compute',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
