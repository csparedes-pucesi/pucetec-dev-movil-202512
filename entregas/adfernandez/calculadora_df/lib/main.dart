import 'package:flutter/material.dart';
import 'package:calculadora_df/views/calculator_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const CalculatorView(),
    );
  }
}