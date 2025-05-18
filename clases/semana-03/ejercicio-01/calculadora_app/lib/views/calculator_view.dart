import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../services/calculator.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final Calculator _calculator = Calculator();
  String _display = '0';

  void _onButtonPress(String value) {
    setState(() {
      _display = _calculator.processInput(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                child: Text(
                  _display,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        label: 'C',
                        bgColor: Colors.grey,
                        onPressed: () => _onButtonPress('C'),
                      ),
                      ButtonWidget(
                        label: '+/-',
                        bgColor: Colors.grey,
                        onPressed: () => _onButtonPress('+/-'),
                      ),
                      ButtonWidget(
                        label: '%',
                        bgColor: Colors.grey,
                        onPressed: () => _onButtonPress('%'),
                      ),
                      ButtonWidget(
                        label: '÷',
                        bgColor: Colors.orange,
                        onPressed: () => _onButtonPress('/'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        label: '7',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('7'),
                      ),
                      ButtonWidget(
                        label: '8',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('8'),
                      ),
                      ButtonWidget(
                        label: '9',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('9'),
                      ),
                      ButtonWidget(
                        label: '×',
                        bgColor: Colors.orange,
                        onPressed: () => _onButtonPress('*'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        label: '4',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('4'),
                      ),
                      ButtonWidget(
                        label: '5',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('5'),
                      ),
                      ButtonWidget(
                        label: '6',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('6'),
                      ),
                      ButtonWidget(
                        label: '-',
                        bgColor: Colors.orange,
                        onPressed: () => _onButtonPress('-'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                        label: '1',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('1'),
                      ),
                      ButtonWidget(
                        label: '2',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('2'),
                      ),
                      ButtonWidget(
                        label: '3',
                        bgColor: Colors.grey[800]!,
                        onPressed: () => _onButtonPress('3'),
                      ),
                      ButtonWidget(
                        label: '+',
                        bgColor: Colors.orange,
                        onPressed: () => _onButtonPress('+'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ButtonWidget(
                          label: '0',
                          bgColor: Colors.grey[800]!,
                          onPressed: () => _onButtonPress('0'),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        flex: 1,
                        child: ButtonWidget(
                          label: '.',
                          bgColor: Colors.grey[800]!,
                          onPressed: () => _onButtonPress('.'),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        flex: 1,
                        child: ButtonWidget(
                          label: '=',
                          bgColor: Colors.orange,
                          onPressed: () => _onButtonPress('='),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
