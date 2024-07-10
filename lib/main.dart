import 'package:flutter/material.dart';
import 'package:simple_counter/screens/counter_app_body.dart';

void main() {
  runApp(const EnchanceCounterApp());
}

class EnchanceCounterApp extends StatelessWidget {
  const EnchanceCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterAppBody(),
    );
  }
}



