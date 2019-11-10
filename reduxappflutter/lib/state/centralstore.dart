import 'package:redux/redux.dart';

import './calcreducer.dart';

class Question {
  int id;
  String name;
  List<String> options;
  String rans;
  String yourAns;
  int score;
}

class CentralStore {
  List<Question> questionList;
  int counter;
  CentralStore(this.counter);
}

Store<CentralStore> createStore() {
  return new Store(calcReducer, initialState: CentralStore(0));
}
