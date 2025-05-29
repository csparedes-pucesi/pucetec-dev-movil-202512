// lib/views/calculator_view.dart
import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../services/calculator.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final Calculadora calculadora = Calculadora();
  
  @override
  Widget build(BuildContext context) {
    final colorFondo = Colors.grey[800] ?? Colors.grey;
    final colorGris = Colors.grey[500] ?? Colors.grey;
    final colorNaranja = Colors.orange[700] ?? Colors.orange;
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Calculadora App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      calculadora.obtenerNumero(), 
                      style: const TextStyle(fontSize: 60)
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    bgColor: colorGris, 
                    label: 'AC', 
                    alPresionar: () {
                      setState(() {
                        calculadora.limpiarCalculadora();
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorGris, 
                    label: '+/-', 
                    alPresionar: () {}
                  ),
                  ButtonWidget(
                    bgColor: colorGris, 
                    label: '%', 
                    alPresionar: () {}
                  ),
                  ButtonWidget(
                    bgColor: colorNaranja, 
                    label: '/', 
                    alPresionar: () {
                      setState(() {
                        calculadora.definirOperacion('/');
                      });
                    }
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '7', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('7');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '8', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('8');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '9', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('9');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorNaranja, 
                    label: '*', 
                    alPresionar: () {
                      setState(() {
                        calculadora.definirOperacion('*');
                      });
                    }
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '4', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('4');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '5', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('5');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '6', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('6');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorNaranja, 
                    label: '-', 
                    alPresionar: () {
                      setState(() {
                        calculadora.definirOperacion('-');
                      });
                    }
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '1', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('1');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '2', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('2');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '3', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('3');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorNaranja, 
                    label: '+', 
                    alPresionar: () {
                      setState(() {
                        calculadora.definirOperacion('+');
                      });
                    }
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: '0', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito('0');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorFondo, 
                    label: ',', 
                    alPresionar: () {
                      setState(() {
                        calculadora.agregarDigito(',');
                      });
                    }
                  ),
                  ButtonWidget(
                    bgColor: colorNaranja, 
                    label: '=', 
                    alPresionar: () {
                      setState(() {
                        calculadora.calcularResultado();
                      });
                    }
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}