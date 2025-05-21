class CalculatorService {
  String _number = '0';
  String _prevNumber = '0';
  String _operation = '';
  bool _shouldReset = false;

  String get display => _number;

  void clear() {
    _number = '0';
    _prevNumber = '0';
    _operation = '';
    _shouldReset = false;
  }

  void toggleSign() {
    if (_number != '0') {
      if (_number.startsWith('-')) {
        _number = _number.substring(1);
      } else {
        _number = '-$_number';
      }
    }
  }

  void addDigit(String digit) {
    if (_shouldReset) {
      _number = '0';
      _shouldReset = false;
    }

    if (digit == ',' && _number.contains(',')) return;

    if (_number == '0' && digit != ',') {
      _number = digit;
    } else {
      _number += digit;
    }
  }

  void setOperation(String operation) {
    _prevNumber = _number;
    _operation = operation;
    _shouldReset = true;
  }

  void calculate() {
    double num1 = double.parse(_prevNumber.replaceAll(',', '.'));
    double num2 = double.parse(_number.replaceAll(',', '.'));
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
    }

    _number = result.toString().replaceAll('.', ',');
    _operation = '';
  }
}
