import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/counter_providers/counter_states.dart';


final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterLoadingCounterState()) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        state = CounterInitialCounterState(count: 0);
      },
    );
  }

  void increment() {
    state = CounterInitialCounterState(
        count: (state as CounterInitialCounterState).count! + 1);
  }

  void decrement() {
    if ((state as CounterInitialCounterState).count == 0) return;
    state = CounterInitialCounterState(
        count: (state as CounterInitialCounterState).count! - 1);
  }

  void reset() {
    state = CounterInitialCounterState(count: 0);
  }
}
