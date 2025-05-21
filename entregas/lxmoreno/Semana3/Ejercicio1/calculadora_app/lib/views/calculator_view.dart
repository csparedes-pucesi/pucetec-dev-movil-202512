import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';
import '../services/calculator.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});
  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final Calculadora calc = Calculadora();

  void construirNumero(String valor){
    setState(() {
      calc.construirNumero(valor);
    });
  }
  void seleccionarOperacion(String operacion){
    setState(() {
      calc.seleccionarOperacion(operacion);
    });
  }
  void limpiar(){
    setState(() {
      calc.limpiar();
    });
  }
  void calcularResultado(){
    setState(() {
      calc.calcularResultado();
    });
  }
  void cambiarSingo(){
    setState(() {
      calc.cambiarSingo();
    });
  }
  void aplicarPorcentaje(){
    setState(() {
      calc.aplicarPorcentaje();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = Colors.grey[800] ?? Colors.grey;
    final greyColor = Colors.grey[500] ?? Colors.grey;
    final orangeColor = Colors.orange[700] ?? Colors.orange;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
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
                    Text(calc.numeroActual, style: TextStyle(fontSize: 60, color: Color.fromARGB(255, 253, 251, 251))),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    bgColor: greyColor,
                    label: 'AC',
                    onPressed: () => limpiar(),
                  ),
                  ButtonWidget(bgColor: greyColor, label: '%', onPressed: () => aplicarPorcentaje(),),
                  ButtonWidget(bgColor: greyColor, label: '+/-', onPressed: () => cambiarSingo(),),
                  ButtonWidget(bgColor: orangeColor, label: '/', onPressed: () => seleccionarOperacion('/'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '7',
                    onPressed: () => construirNumero('7'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '8',
                    onPressed: () => construirNumero('8'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '9',
                    onPressed: () => construirNumero('9'),
                  ),
                  ButtonWidget(bgColor: orangeColor, label: '*', onPressed: () => seleccionarOperacion('*'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '4',
                    onPressed: () => construirNumero('4'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '5',
                    onPressed: () => construirNumero('5'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '6',
                    onPressed: () => construirNumero('6'),
                  ),
                  ButtonWidget(bgColor: orangeColor, label: '-', onPressed: () => seleccionarOperacion('-'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '1',
                    onPressed: () => construirNumero('1'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '2',
                    onPressed: () => construirNumero('2'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '3',
                    onPressed: () => construirNumero('3'),
                  ),
                  ButtonWidget(bgColor: orangeColor, label: '+', onPressed: () => seleccionarOperacion('+'),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '0',
                    onPressed: () => construirNumero('0'),
                  ),
                  ButtonWidget(
                    bgColor: bgColor,
                    label: '0',
                    onPressed: () => construirNumero('0'),
                  ), // Repite solo por ahora
                  ButtonWidget(
                    bgColor: bgColor,
                    label: ',',
                    onPressed: () => construirNumero('.'),
                  ),
                  ButtonWidget(bgColor: orangeColor, label: '=', onPressed: calcularResultado,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
