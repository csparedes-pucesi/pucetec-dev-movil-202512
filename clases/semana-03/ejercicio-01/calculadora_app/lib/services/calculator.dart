class CalculatorService {
  String _number = '0';
  String _previousNumber = '0';
  String _operation = '';

  String get number => _number;

  void clear() {
    _number = '0';
    _previousNumber = '0';
    _operation = '';
  }

  void deleteLastDigit() {
    if (_number.length == 1 || (_number.length == 2 && _number.startsWith('-'))) {
      _number = '0';
    } else {
      _number = _number.substring(0, _number.length - 1);
    }
  }

  void toggleSign() {
    if (_number.startsWith('-')) {
      _number = _number.substring(1);
    } else if (_number != '0') {
      _number = '-$_number';
    }
  }

  void appendNumber(String value) {
    if (_number == '0' && value != '.') {
      _number = value;
    } else if (value == '.' && _number.contains('.')) {
      return;
    } else {
      _number += value;
    }
  }

  void setOperation(String operation) {
    _previousNumber = _number;
    _number = '0';
    _operation = operation;
  }

  void calculateResult() {
    final double num1 = double.tryParse(_previousNumber) ?? 0;
    final double num2 = double.tryParse(_number) ?? 0;
    double result = 0;

    switch (_operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        result = num2 == 0 ? 0 : num1 / num2;
        break;
      case '%':
        result = num1 % num2;
        break;
      default:
        return;
    }

    _number = result.toString().endsWith('.0')
        ? result.toInt().toString()
        : result.toString();
    _previousNumber = '0';
    _operation = '';
  }
}
