import './actions.dart';
import './centralstore.dart';

CentralStore calcReducer(currentState, action) {
  if (action == Actions.PLUS) {
    int tempCount = currentState.counter;
    tempCount++;
    CentralStore centralStore = new CentralStore(tempCount);
    return centralStore;
  }
  return currentState;
}
