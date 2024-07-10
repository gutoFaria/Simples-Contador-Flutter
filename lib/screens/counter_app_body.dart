import 'package:flutter/material.dart';
import 'package:simple_counter/widgets/app_title.dart';
import 'package:simple_counter/widgets/history.dart';

class CounterAppBody extends StatefulWidget {
  const CounterAppBody({super.key});

  @override
  State<CounterAppBody> createState() => _CounterAppBodyState();
}

class _CounterAppBodyState extends State<CounterAppBody> {

  int counter = 0;

  List<int> increaseHistory = [];

  void increase(){
    setState(() {
      counter++;
      increaseHistory = List<int>.from(increaseHistory)..add(counter);
    });
  }

  void decrease(){
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title widget,
            const AppTitle(),
            // The counter widget
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: decrease, child: const Text('-')),
                Text('$counter'),
                ElevatedButton(onPressed: increase, child: const Text('+'))
              ],
            ),
            // The history widget
            HistoryWidget(increaseHistory: increaseHistory)
          ],
        ),
      ),
    );
  }
}