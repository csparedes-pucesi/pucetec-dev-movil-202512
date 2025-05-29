class Calculator {
  String _currentNumber = '0';
  String _operation = '';
  double _firstNumber = 0;
  bool _isNewNumber = true;

  String processInput(String input) {
    if (input == 'C') {
      return _clear();
    }

    if (input == '+/-') {
      return _toggleSign();
    }

    if (input == '%') {
      return _calculatePercentage();
    }

    if (input == '=') {
      return _calculateResult();
    }

    if (['+', '-', '*', '/'].contains(input)) {
      _operation = input;
      _firstNumber = double.parse(_currentNumber);
      _isNewNumber = true;
      return _currentNumber;
    }

    if (_isNewNumber) {
      _currentNumber = input;
      _isNewNumber = false;
    } else {
      _currentNumber += input;
    }

    return _currentNumber;
  }

  String _clear() {
    _currentNumber = '0';
    _operation = '';
    _firstNumber = 0;
    _isNewNumber = true;
    return _currentNumber;
  }

  String _toggleSign() {
    if (_currentNumber != '0') {
      if (_currentNumber.startsWith('-')) {
        _currentNumber = _currentNumber.substring(1);
      } else {
        _currentNumber = '-$_currentNumber';
      }
    }
    return _currentNumber;
  }

  String _calculatePercentage() {
    double number = double.parse(_currentNumber);
    _currentNumber = (number / 100).toString();
    return _currentNumber;
  }

  String _calculateResult() {
    if (_operation.isEmpty) return _currentNumber;

    double secondNumber = double.parse(_currentNumber);
    double result = 0;

    switch (_operation) {
      case '+':
        result = _firstNumber + secondNumber;
        break;
      case '-':
        result = _firstNumber - secondNumber;
        break;
      case '*':
        result = _firstNumber * secondNumber;
        break;
      case '/':
        if (secondNumber != 0) {
          result = _firstNumber / secondNumber;
        } else {
          return 'Error';
        }
        break;
    }

    _currentNumber = result.toString();
    _operation = '';
    _isNewNumber = true;
    return _currentNumber;
  }
}

// formula

// numero

// numero previo

// ultima operación

// calcular el resultado

// calcular el subresultado

// limpiar la calculadora

// borrar el ultimo numero

// cambiar toggle signo

// construir numero ingresado

// definir ultimo numero

// definir operaciones

