import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  TextEditingController useridCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  String msg = '';
  login() {
    String uid = useridCtrl.text;
    print("UID Is " + uid);
    DocumentReference df = Firestore.instance.document('users/' + uid);
    df.get().then((datasnapshot) {
      print("Data SnapShot ${datasnapshot.data}");
      if (datasnapshot.exists) {
        print("Inside Outer IF");
        setState(() {
          print(
              "DB Password ${datasnapshot.data['password']} and Txt Password ${passwordCtrl.text}");
          if (passwordCtrl.text == datasnapshot.data['password']) {
            msg = "Welcome " + uid;
            print(msg);
          } else {
            msg = "Invalid Userid or Password";
            print(msg);
          }
        });
      } else {
        print("Inside ELSE");
        setState(() {
          msg = "Invalid Userid or Password";
        });
      }
    });
  }

  register() {
    String uid = useridCtrl.text;
    String pwd = passwordCtrl.text;
    Map<String, String> map = {'userid': uid, 'password': pwd};
    DocumentReference df = Firestore.instance.document('users/' + uid);
    df.setData(map).whenComplete(() {
      setState(() {
        msg = 'Record Added ';
      });

      print("Record Added Call");
    }).catchError((err) {
      setState(() {
        msg = 'Error in Record Add ';
      });

      print('Error During Add $err');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Base Demo'),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            msg,
            style: TextStyle(fontSize: 30),
          ),
          Column(
            children: <Widget>[
              TextField(
                controller: useridCtrl,
              ),
              TextField(
                controller: passwordCtrl,
              ),
              RaisedButton(
                onPressed: () {
                  login();
                },
                child: Text('Login'),
              ),
              RaisedButton(
                onPressed: () {
                  register();
                },
                child: Text('Register'),
              )
            ],
          )
        ],
      ),
    );
  }
}
