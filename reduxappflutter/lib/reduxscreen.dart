import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './state/actions.dart';
import './state/centralstore.dart';

typedef myCallBack = Function();

class ReduxScreen extends StatelessWidget {
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
            StoreConnector<CentralStore, myCallBack>(
              converter: (store) {
                // get the store object and return the arrow function
//                return (){
//                  return store.dispatch(Actions.PLUS);
//                };
                return () => store.dispatch(Actions.PLUS);
              },
              builder: (context, callBack) => RaisedButton(
                    onPressed: callBack,
                    child: Text('Click It'),
                  ),
            ),
            StoreConnector<CentralStore, CentralStore>(
              converter: (store) => store.state,
              builder: (context, state) => Text('Count is ${state.counter}'),
            )
          ],
        ),
      ),
    );
  }
}
