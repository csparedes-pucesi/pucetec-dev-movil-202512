import 'package:flutter/material.dart';
import '../services/calculator.dart';
import '../widgets/button_widget.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final calculator = CalculatorService();

  void _onButtonPressed(String label) {
    setState(() {
      if (label == 'AC') {
        calculator.clear();
      } else if (label == '+/-') {
        calculator.toggleSign();
      } else if (label == '%') {
        calculator.setOperation('%');
      } else if (label == '=') {
        calculator.calculateResult();
      } else if (['+', '-', '*', '/'].contains(label)) {
        calculator.setOperation(label);
      } else {
        calculator.appendNumber(label == ',' ? '.' : label);
      }
    });
  }

  Widget _buildRow(List<String> labels, List<Color> colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(labels.length, (index) {
        return ButtonWidget(
          bgColor: colors[index],
          label: labels[index],
          onPressed: () => _onButtonPressed(labels[index]),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = Colors.grey[800] ?? Colors.grey;
    final greyColor = Colors.grey[500] ?? Colors.grey;
    final orangeColor = Colors.orange[700] ?? Colors.orange;

    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(calculator.number,
                    style: const TextStyle(fontSize: 60, color: Colors.white)),
              ],
            ),
          ),
          _buildRow(['AC', '%', '+/-', '/'], [greyColor, greyColor, greyColor, orangeColor]),
          _buildRow(['7', '8', '9', '*'], [bgColor, bgColor, bgColor, orangeColor]),
          _buildRow(['4', '5', '6', '-'], [bgColor, bgColor, bgColor, orangeColor]),
          _buildRow(['1', '2', '3', '+'], [bgColor, bgColor, bgColor, orangeColor]),
          _buildRow(['0', '0', ',', '='], [bgColor, bgColor, bgColor, orangeColor]),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
