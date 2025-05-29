import 'package:calculadora_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CalculatorBody());

class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key});

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
          backgroundColor: Colors.black,
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
                        '0',
                        style: TextStyle(fontSize: 60, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(bgColor: greyColor, label: 'AC'),
                    ButtonWidget(bgColor: greyColor, label: '%'),
                    ButtonWidget(bgColor: greyColor, label: '+/-'),
                    ButtonWidget(bgColor: orangeColor, label: '/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(bgColor: bgColor, label: '7'),
                    ButtonWidget(bgColor: bgColor, label: '8'),
                    ButtonWidget(bgColor: bgColor, label: '9'),
                    ButtonWidget(bgColor: orangeColor, label: '*'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(bgColor: bgColor, label: '4'),
                    ButtonWidget(bgColor: bgColor, label: '5'),
                    ButtonWidget(bgColor: bgColor, label: '6'),
                    ButtonWidget(bgColor: orangeColor, label: '-'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(bgColor: bgColor, label: '1'),
                    ButtonWidget(bgColor: bgColor, label: '2'),
                    ButtonWidget(bgColor: bgColor, label: '3'),
                    ButtonWidget(bgColor: orangeColor, label: '+'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ButtonWidget(bgColor: bgColor, label: '0'),
                    ButtonWidget(bgColor: bgColor, label: '0'),
                    ButtonWidget(bgColor: bgColor, label: ','),
                    ButtonWidget(bgColor: orangeColor, label: '='),
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
