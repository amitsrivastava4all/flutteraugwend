import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './state/actions.dart';
import './state/centralstore.dart';

typedef myCallBack = Function();

class ReduxDemo extends StatelessWidget {
  final Store<CentralStore> storeObject = createStore();
  @override
  Widget build(BuildContext context) {
    return StoreProvider<CentralStore>(
      store: storeObject,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Redux Example'),
        ),
        body: Column(
          children: <Widget>[
            // StoreConnector<Input, Output>
            StoreConnector<CentralStore, myCallBack>(
                converter: (store) {
                  return () => store.dispatch(Actions.PLUS);
                },
                builder: (context, callback) => RaisedButton(
                      onPressed: callback,
                      child: Text('PLUS IT'),
                    )),
            StoreConnector<CentralStore, int>(
                converter: (store) => store.state.counter,
                builder: (context, counter) => Text('Count is ${counter}'))
          ],
        ),
      ),
    );
  }
}
