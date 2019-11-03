import 'dart:async';

import './GenericEvent.dart';
import './IncrementEvent.dart';

class CounterBloc {
  int _counter = 0;

  // Stream Controller for State Handling
  final _counterStateController = StreamController<int>();

  // Create Sink for Input
  StreamSink<int> get _inCounter => _counterStateController.sink;

  // Create Stream for Output
  Stream<int> get counter => _counterStateController.stream;

  // Create Controller for Listen Events (Increment Event or Decrement Event)
  final _counterEventController = StreamController<CounterEvent>();

  // Event Sink
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;

    // Then sink the result
    _inCounter.add(_counter);
  }

  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
