import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../services/calculator.dart';

class CalculatorBody extends StatefulWidget {
  const CalculatorBody({super.key});

  @override
  State<CalculatorBody> createState() => _CalculatorBodyState();
}

class _CalculatorBodyState extends State<CalculatorBody> {
  final calculator = CalculatorService();

  void onButtonPressed(String label) {
    setState(() {
      switch (label) {
        case 'AC':
          calculator.clear();
          break;
        case '+/-':
          calculator.toggleSign();
          break;
        case '=':
          calculator.calculate();
          break;
        case '+':
        case '-':
        case '*':
        case '/':
        case '%':
          calculator.setOperation(label);
          break;
        case ',':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          calculator.addDigit(label);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = Colors.grey[800] ?? Colors.grey;
    final greyColor = Colors.grey[500] ?? Colors.grey;
    final orangeColor = Colors.orange[700] ?? Colors.orange;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    calculator.display,
                    style: const TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            buildButtonRow(
              ['AC', '%', '+/-', '/'],
              [greyColor, greyColor, greyColor, orangeColor],
            ),
            buildButtonRow(
              ['7', '8', '9', '*'],
              [bgColor, bgColor, bgColor, orangeColor],
            ),
            buildButtonRow(
              ['4', '5', '6', '-'],
              [bgColor, bgColor, bgColor, orangeColor],
            ),
            buildButtonRow(
              ['1', '2', '3', '+'],
              [bgColor, bgColor, bgColor, orangeColor],
            ),
            buildButtonRow(
              ['0', ',', '='],
              [bgColor, bgColor, orangeColor],
              isLast: true,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow(
    List<String> labels,
    List<Color> colors, {
    bool isLast = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(labels.length, (index) {
        final label = labels[index];
        final color = colors[index];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonWidget(
            bgColor: color,
            label: label,
            onTap: () => onButtonPressed(label),
          ),
        );
      }),
    );
  }
}
