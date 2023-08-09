import 'package:flutter/foundation.dart';

@immutable
abstract class CounterState {}

class CounterLoadingCounterState extends CounterState {}

class CounterInitialCounterState extends CounterState {
  final int? count;

  CounterInitialCounterState({this.count});
}
