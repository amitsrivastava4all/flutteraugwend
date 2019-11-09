import './actions.dart';
import './centralstore.dart';

CentralStore counterReducer(state, action) {
  print("Inside reducer $state Action is $action");
  if (action == Actions.PLUS) {
    int counter = state.counter + 1;
    return CentralStore(counter);
  }

  return state;
}
