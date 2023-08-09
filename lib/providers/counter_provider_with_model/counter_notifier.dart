import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/counter_provider_with_model/counter_state_model.dart';

final counterProviderModelNotifier = StateNotifierProvider<CounterNotifier, CounterStateModel>
  ((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<CounterStateModel> {

  CounterNotifier() : super(const CounterStateModel(count: 0, loading: true)) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        state = state.copyWith(loading: false);
      },
    );
  }

  increment() {
    return state = state.copyWith(count: state.count! + 1);
  }

  decrement() {
    return state = state.copyWith(count: state.count! - 1);
  }

  reset() {
    return state = state.copyWith(count: 0);
  }
}
