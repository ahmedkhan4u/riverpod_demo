import 'package:flutter/foundation.dart';

@immutable
class CounterStateModel {

  final bool? loading;
  final int? count;

  const CounterStateModel({this.loading, this.count});

  CounterStateModel copyWith({
    bool? loading,
    int? count,
  }) {
    return CounterStateModel(
      loading: loading ?? this.loading,
      count: count ?? this.count,
    );
  }
}