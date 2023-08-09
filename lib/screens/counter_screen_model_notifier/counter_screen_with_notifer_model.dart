import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/counter_provider_with_model/counter_notifier.dart';
import 'package:riverpod_demo/providers/counter_providers/counter_notifier.dart';

class CounterScreenWithNotifierModel extends ConsumerWidget {
  const CounterScreenWithNotifierModel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Widget Build Called");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Demo"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(counterProviderModelNotifier.notifier).reset();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            debugPrint("Consumer Build Called");
            final counterState = ref.watch(counterProviderModelNotifier);
            if (counterState.loading!) {
              return const CircularProgressIndicator();
            } else {
              return Text(
                counterState.count.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: "Increment",
            tooltip: "Decrement",
            onPressed: () {
              ref.read(counterProviderModelNotifier.notifier).decrement();
            },
            child: const Icon(Icons.minimize),
          ),
          FloatingActionButton(
            heroTag: "Decrement",
            tooltip: "Increment",
            onPressed: () {
              ref.read(counterProviderModelNotifier.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
