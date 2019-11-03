import 'package:flutter/material.dart';

import '../model/CounterBloc.dart';
import '../model/DecrementEvent.dart';
import '../model/IncrementEvent.dart';

class Calc extends StatelessWidget {
  CounterBloc bloc = new CounterBloc();

  void plus() {
    // this will call the listener
    bloc.counterEventSink.add(IncrementEvent());
  }

  void minus() {
    bloc.counterEventSink.add(DecrementEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          StreamBuilder(
            initialData: 0,
            stream: bloc.counter,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text('Result is ${snapshot.data}');
            },
          ),
          RaisedButton(
            onPressed: () {
              plus();
            },
            child: Text('+'),
          ),
          RaisedButton(
            onPressed: () {
              minus();
            },
            child: Text('-'),
          )
        ],
      ),
    );
  }
}
