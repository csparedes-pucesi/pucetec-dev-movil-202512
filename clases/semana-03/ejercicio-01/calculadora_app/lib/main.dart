import 'package:calculadora_app/views/CalculatorBody.dart';
import 'package:calculadora_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: CalculatorBody());
  }
}
