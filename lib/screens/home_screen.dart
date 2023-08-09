import 'package:flutter/material.dart';
import 'package:riverpod_demo/screens/counter_screen/counter_screen.dart';
import 'package:riverpod_demo/screens/counter_screen_model_notifier/counter_screen_with_notifer_model.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod Demo"),),
      body: Column(
        children: [
          Expanded(child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CounterScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              color: Colors.redAccent,
              child: const FittedBox(
                child: Text("Counter With Abstract Class State", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),),
              ),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CounterScreenWithNotifierModel()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: const FittedBox(
                child: Text("Counter With Model Class", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
