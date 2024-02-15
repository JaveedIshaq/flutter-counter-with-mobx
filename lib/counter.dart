import 'package:mobx/mobx.dart';

part 'counter.g.dart';

// ignore: library_private_types_in_public_api
class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @observable
  String counterValueString = "The Counter Value is: 0";

  @action
  void increment() {
    value++;
    counterValueString = "The Counter Value is: $value";
  }

  @action
  void decrement() {
    value--;
    counterValueString = "The Counter Value is: $value";
  }

  @action
  void reset() {
    value = 0;
    counterValueString = "The Counter Value is: $value";
  }
}
