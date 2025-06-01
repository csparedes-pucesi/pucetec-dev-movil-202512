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

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Display del número actual
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    calculadora.obtenerNumero(),
                    style: const TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Fila AC, +/-, %, /
            buildRow([
              ButtonWidget(
                bgColor: colorGris,
                label: 'AC',
                onPressed: () => setState(calculadora.limpiarCalculadora),
              ),
              ButtonWidget(
                bgColor: colorGris,
                label: '+/-',
                onPressed: () => setState(calculadora.cambiarSigno),
              ),
              ButtonWidget(
                bgColor: colorGris,
                label: '%',
                onPressed: () => setState(() => calculadora.definirOperacion('%')),
              ),
              ButtonWidget(
                bgColor: colorNaranja,
                label: '/',
                onPressed: () => setState(() => calculadora.definirOperacion('/')),
              ),
            ]),

            // Fila 7,8,9,*
            buildRow([
              buildDigitButton('7'),
              buildDigitButton('8'),
              buildDigitButton('9'),
              ButtonWidget(
                bgColor: colorNaranja,
                label: '*',
                onPressed: () => setState(() => calculadora.definirOperacion('*')),
              ),
            ]),

            // Fila 4,5,6,-
            buildRow([
              buildDigitButton('4'),
              buildDigitButton('5'),
              buildDigitButton('6'),
              ButtonWidget(
                bgColor: colorNaranja,
                label: '-',
                onPressed: () => setState(() => calculadora.definirOperacion('-')),
              ),
            ]),

            // Fila 1,2,3,+
            buildRow([
              buildDigitButton('1'),
              buildDigitButton('2'),
              buildDigitButton('3'),
              ButtonWidget(
                bgColor: colorNaranja,
                label: '+',
                onPressed: () => setState(() => calculadora.definirOperacion('+')),
              ),
            ]),

            // Fila 0, ., =
            buildRow([
              buildDigitButton('0', flex: 2),
              buildDigitButton(','),
              ButtonWidget(
                bgColor: colorNaranja,
                label: '=',
                onPressed: () => setState(calculadora.calcularResultado),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildDigitButton(String number, {int flex = 1}) {
    final bgColor = Colors.grey[800] ?? Colors.grey;
    return Expanded(
      flex: flex,
      child: ButtonWidget(
        bgColor: bgColor,
        label: number,
        onPressed: () => setState(() => calculadora.agregarDigito(number)),
      ),
    );
  }

  Widget buildRow(List<Widget> buttons) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons,
      ),
    );
  }
}