// lib/main.dart
import 'package:calculadora_app/widgets/button_widget.dart';
import 'package:calculadora_app/services/calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Calculadora calculadora = Calculadora();

  @override
  Widget build(BuildContext context) {
    final bgColor = Colors.grey[800] ?? Colors.grey;
    final greyColor = Colors.grey[500] ?? Colors.grey;
    final orangeColor = Colors.orange[700] ?? Colors.orange;
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
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
                      Text(calculadora.numero, style: TextStyle(fontSize: 60)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(
                      bgColor: greyColor,
                      label: 'AC',
                      alPresionar: () {
                        setState(() {
                          calculadora.limpiarCalculadora();
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: greyColor,
                      label: '%',
                      alPresionar: () {
                        setState(() {
                          calculadora.definirOperacion('%');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: greyColor,
                      label: '+/-',
                      alPresionar: () {
                        setState(() {
                          calculadora.cambiarSigno();
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: orangeColor,
                      label: '/',
                      alPresionar: () {
                        setState(() {
                          calculadora.definirOperacion('/');
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '7',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('7');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '8',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('8');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '9',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('9');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: orangeColor,
                      label: '*',
                      alPresionar: () {
                        setState(() {
                          calculadora.definirOperacion('*');
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '4',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('4');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '5',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('5');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '6',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('6');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: orangeColor,
                      label: '-',
                      alPresionar: () {
                        setState(() {
                          calculadora.definirOperacion('-');
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '1',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('1');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '2',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('2');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '3',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('3');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: orangeColor,
                      label: '+',
                      alPresionar: () {
                        setState(() {
                          calculadora.definirOperacion('+');
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '0',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('0');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: '0',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito('0');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: bgColor,
                      label: ',',
                      alPresionar: () {
                        setState(() {
                          calculadora.agregarDigito(',');
                        });
                      },
                    ),
                    ButtonWidget(
                      bgColor: orangeColor,
                      label: '=',
                      alPresionar: () {
                        setState(() {
                          calculadora.calcularResultado();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
