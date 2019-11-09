import 'package:redux/redux.dart';

import './reducer.dart';

class CentralStore {
  int counter;
  CentralStore(this.counter);
}

createStore() {
  return Store(counterReducer, initialState: CentralStore(0));
}
