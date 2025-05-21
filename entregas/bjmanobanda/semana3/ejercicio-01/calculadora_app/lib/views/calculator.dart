import 'package:flutter/material.dart';
import 'package:calculadora_app/widgets/button_widget.dart'; // Importa el widget personalizado para los botones
import 'package:calculadora_app/services/calculogica.dart'; // Importa la clase de lógica de cálculo

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  String _displayText = '0'; // Texto que se muestra en la pantalla principal de la calculadora
  String _historyText = ''; // Texto que muestra el historial de la operación
  String _previousNumber = ''; // Almacena el número anterior en una operación
  String _currentNumber = ''; // Almacena el número actual que se está ingresando
  String _operator = ''; // Almacena el operador (+, -, *, /)
  bool _isOperatorPressed = false; // Bandera para saber si se acaba de presionar un operador
  final Calculation _calculation = Calculation(); // Instancia de la clase de lógica de cálculo

  // Función que se ejecuta cuando se presiona un botón
  void _onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        // Si se presiona 'AC', reinicia todos los valores
        _displayText = '0';
        _historyText = '';
        _previousNumber = '';
        _currentNumber = '';
        _operator = '';
        _isOperatorPressed = false; // Reinicia la bandera
      } else if (buttonText == '=') {
        // Si se presiona '=', evalúa la expresión
        if (_operator.isNotEmpty && _currentNumber.isNotEmpty) {
          // Construye la expresión completa para el historial
          _historyText = '$_previousNumber $_operator $_currentNumber =';
          // Calcula el resultado usando la lógica de cálculo
          String result = _calculation.calculate('$_previousNumber $_operator $_currentNumber');
          _displayText = result; // Muestra el resultado en la pantalla principal
          _previousNumber = result; // El resultado se convierte en el número previo para encadenar operaciones
          _currentNumber = ''; // Limpia el número actual
          _operator = ''; // Limpia el operador
          _isOperatorPressed = true; // Prepara para una nueva operación o número
        }
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
        // Si se presiona un operador
        if (_currentNumber.isNotEmpty) {
          if (_previousNumber.isNotEmpty && _operator.isNotEmpty) {
            // Si ya hay una operación en curso, calcula el subtotal
            _previousNumber = _calculation.calculate('$_previousNumber $_operator $_currentNumber');
            _displayText = _previousNumber; // Muestra el subtotal en la pantalla principal
            _historyText = '$_previousNumber $buttonText '; // Actualiza el historial
          } else {
            // Si es la primera operación, el número actual se convierte en el número previo
            _previousNumber = _currentNumber;
            _historyText = '$_currentNumber $buttonText '; // Actualiza el historial
          }
          _operator = buttonText; // Guarda el nuevo operador
          _currentNumber = ''; // Limpia el número actual
          _isOperatorPressed = true; // Marca que se acaba de presionar un operador
        } else if (_previousNumber.isNotEmpty) {
          // Si ya hay un número previo y se presiona un operador, simplemente cambia el operador
          _operator = buttonText;
          _historyText = '$_previousNumber $buttonText ';
          _isOperatorPressed = true;
        }
      } else if (buttonText == '+/-') {
        // Si se presiona '+/-', cambia el signo del número actual
        if (_displayText != '0' && _displayText.isNotEmpty && double.tryParse(_displayText) != null) {
          if (_displayText.startsWith('-')) {
            _displayText = _displayText.substring(1); // Elimina el signo negativo
          } else {
            _displayText = '-$_displayText'; // Añade el signo negativo
          }
          _currentNumber = _displayText; // Actualiza el número actual con el signo cambiado
        }
        _isOperatorPressed = false; // No es un operador que inicie un nuevo número
      } else if (buttonText == '%') {
        // Si se presiona '%', calcula el porcentaje
        if (_currentNumber.isNotEmpty && double.tryParse(_currentNumber) != null) {
          double number = double.parse(_currentNumber);
          number = number / 100; // Divide por 100
          _displayText = number.toString(); // Muestra el resultado
          _currentNumber = _displayText; // Actualiza el número actual
        }
        _isOperatorPressed = false; // No es un operador que inicie un nuevo número
      } else if (buttonText == ',') {
        // Manejo del punto decimal
        if (!_currentNumber.contains('.')) { // Evita múltiples puntos decimales
          if (_isOperatorPressed || _displayText == '0' || _displayText == 'Error') {
            _displayText = '0.';
            _currentNumber = '0.';
            _isOperatorPressed = false;
          } else {
            _displayText += '.';
            _currentNumber += '.';
          }
        }
      } else {
        // Si se presiona un número
        if (_isOperatorPressed) {
          // Si se acaba de presionar un operador, el nuevo número reemplaza la pantalla
          _displayText = buttonText;
          _currentNumber = buttonText;
          _isOperatorPressed = false;
        } else {
          // Si no, añade el dígito al texto existente
          if (_displayText == '0' || _displayText == 'Error') {
            _displayText = buttonText;
            _currentNumber = buttonText;
          } else {
            _displayText += buttonText;
            _currentNumber += buttonText;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Definición de colores para los botones
    final bgColor = Colors.grey[800] ?? Colors.grey;
    final greyColor = Colors.grey[500] ?? Colors.grey;
    final orangeColor = Colors.orange[700] ?? Colors.orange;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Calculadora App')), // Barra superior de la aplicación
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // Alinea los elementos al final de la columna
            children: [
              // Área de visualización del historial de operaciones
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Alinea el texto a la derecha
                  children: [
                    Expanded( // Permite que el texto se expanda y use el espacio disponible
                      child: Text(
                        _historyText, // Muestra el historial de la operación
                        style: const TextStyle(fontSize: 20, color: Colors.grey), // Estilo de fuente más pequeña y gris
                        textAlign: TextAlign.right, // Alinea el texto a la derecha
                        maxLines: 1, // Una sola línea
                        overflow: TextOverflow.ellipsis, // Si es muy largo, muestra puntos suspensivos
                      ),
                    ),
                  ],
                ),
              ),
              // Área de visualización del resultado principal
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Alinea el texto a la derecha
                  children: [
                    Expanded( // Permite que el texto se expanda y use el espacio disponible
                      child: Text(
                        _displayText, // Muestra el número actual o el resultado
                        style: const TextStyle(fontSize: 60), // Estilo de fuente grande
                        textAlign: TextAlign.right, // Alinea el texto a la derecha
                        maxLines: 1, // Una sola línea
                        overflow: TextOverflow.ellipsis, // Si es muy largo, muestra puntos suspensivos
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Espacio entre la pantalla y los botones
              // Filas de botones de la calculadora
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centra los botones horizontalmente
                spacing: 20, // Espacio entre los botones (esta propiedad no existe en Row, se simula con SizedBox)
                children: [
                  ButtonWidget(bgColor: greyColor, label: 'AC', onPressed: () => _onButtonPressed('AC')),
                  ButtonWidget(bgColor: greyColor, label: '%', onPressed: () => _onButtonPressed('%')),
                  ButtonWidget(bgColor: greyColor, label: '+/-', onPressed: () => _onButtonPressed('+/-')),
                  ButtonWidget(bgColor: orangeColor, label: '/', onPressed: () => _onButtonPressed('/')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ButtonWidget(bgColor: bgColor, label: '7', onPressed: () => _onButtonPressed('7')),
                  ButtonWidget(bgColor: bgColor, label: '8', onPressed: () => _onButtonPressed('8')),
                  ButtonWidget(bgColor: bgColor, label: '9', onPressed: () => _onButtonPressed('9')),
                  ButtonWidget(bgColor: orangeColor, label: '*', onPressed: () => _onButtonPressed('*')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ButtonWidget(bgColor: bgColor, label: '4', onPressed: () => _onButtonPressed('4')),
                  ButtonWidget(bgColor: bgColor, label: '5', onPressed: () => _onButtonPressed('5')),
                  ButtonWidget(bgColor: bgColor, label: '6', onPressed: () => _onButtonPressed('6')),
                  ButtonWidget(bgColor: orangeColor, label: '-', onPressed: () => _onButtonPressed('-')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ButtonWidget(bgColor: bgColor, label: '1', onPressed: () => _onButtonPressed('1')),
                  ButtonWidget(bgColor: bgColor, label: '2', onPressed: () => _onButtonPressed('2')),
                  ButtonWidget(bgColor: bgColor, label: '3', onPressed: () => _onButtonPressed('3')),
                  ButtonWidget(bgColor: orangeColor, label: '+', onPressed: () => _onButtonPressed('+')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  ButtonWidget(bgColor: bgColor, label: '0', onPressed: () => _onButtonPressed('0'), big: true), // Botón '0' más grande
                  ButtonWidget(bgColor: bgColor, label: ',', onPressed: () => _onButtonPressed(',')),
                  ButtonWidget(bgColor: orangeColor, label: '=', onPressed: () => _onButtonPressed('=')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
