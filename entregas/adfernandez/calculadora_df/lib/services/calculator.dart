class Calculadora {
  // formula
  String formula = '';

  // numero
  String numero = '0';

  // numero previo
  String numeroPrevio = '';

  // ultima operación
  String ultimaOperacion = '';

  // Método para obtener el número actual
  String obtenerNumero() {
    return numero;
  }

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
    } else if (ultimaOperacion == '%') {
      resultado = num1 % num2;
    }

    numero = resultado.toString().replaceAll('.', ',');
    numeroPrevio = '';
    ultimaOperacion = '';
  }

  // limpiar la calculadora
  void limpiarCalculadora() {
    formula = '';
    numero = '0';
    numeroPrevio = '';
    ultimaOperacion = '';
  }

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

  // definir operaciones
  void definirOperacion(String operacion) {
    if (numeroPrevio.isNotEmpty && ultimaOperacion.isNotEmpty) {
      calcularResultado();
    }
    numeroPrevio = numero;
    numero = '0';
    ultimaOperacion = operacion;
  }
}