// lib/services/calculator.dart

class Calculadora {
  // formula
  String formula = '';

  // numero
  String numero = '0';

  // numero previo
  String numeroPrevio = '';

  // ultima operación
  String ultimaOperacion = '';

  // calcular el resultado
  void calcularResultado() {
    if (numeroPrevio.isEmpty || ultimaOperacion.isEmpty) return;
    
    double num1 = double.parse(numeroPrevio.replaceAll(',', '.'));
    double num2 = double.parse(numero.replaceAll(',', '.'));
    double resultado = 0;
    
    if (ultimaOperacion == '+') {
      resultado = num1 + num2;
    } else if (ultimaOperacion == '-') {
      resultado = num1 - num2;
    } else if (ultimaOperacion == '*') {
      resultado = num1 * num2;
    } else if (ultimaOperacion == '/') {
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        return;
      }
    }
    
    numero = resultado.toString().replaceAll('.', ',');
  }

  // calcular el subresultado

  // limpiar la calculadora
  void limpiarCalculadora() {
    formula = '';
    numero = '0';
    numeroPrevio = '';
    ultimaOperacion = '';
  }

  // borrar el ultimo numero

  // cambiar toggle signo
  void cambiarSigno() {
    if (numero != '0') {
      double n = double.parse(numero.replaceAll(',', '.'));
      n = n * -1;
      numero = n.toString().replaceAll('.', ',');
    }
  }

  // construir numero ingresado
  void agregarDigito(String digito) {
    if (numero == '0' && digito != ',') {
      numero = digito;
    } else {
      numero = numero + digito;
    }
  }

  // definir ultimo numero

  // definir operaciones
  void definirOperacion(String operacion) {
    numeroPrevio = numero;
    numero = '0';
    ultimaOperacion = operacion;
  }
}