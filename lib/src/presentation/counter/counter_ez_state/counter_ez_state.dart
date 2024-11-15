import 'package:ez_state/ez_state.dart';

part 'counter_state.dart';

class CounterEzState extends EzState<CounterState> {
  CounterEzState() : super(CounterState(initialValue));

  static const initialValue = 0;

  var count = initialValue;

  void increment() {
    count++;
    emit(CounterState(count));
  }

  void decrement() {
    count--;
    emit(CounterState(count));
  }

  void reset() {
    count = initialValue;
    emit(CounterState(initialValue));
  }
}
