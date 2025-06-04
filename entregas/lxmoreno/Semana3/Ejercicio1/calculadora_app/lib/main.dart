import 'package:flutter/material.dart';
import 'views/calculator_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculadora App',
      home: CalculatorView(),
    );
  }
}
