import 'package:flutter/material.dart';
import 'package:calculadora_app/views/calculator.dart'; // Importa la vista de la calculadora

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora App', // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, // Tema principal de la aplicación
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CalculatorView(), // Establece la vista principal de la calculadora
    );
  }
}
