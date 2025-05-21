// formula-> este si debe realziarse
class Calculadora {
  String numeroActual = '0';
  String numeroPrevio = '0';
  String operacion = '';

  void construirNumero(String valor) {
    if (numeroActual == '0') {
      numeroActual = valor;
    } else {
      numeroActual += valor;
    }
  }

  void seleccionarOperacion(String operacionSeleccionada) {
    numeroPrevio = numeroActual;
    numeroActual = '0';
    operacion = operacionSeleccionada;
  }

  void limpiar() {
    numeroActual = '0';
    numeroPrevio = '0';
    operacion = '';
  }

  void calcularResultado() {
    
    double num1 = double.parse(numeroPrevio);
    double num2 = double.parse(numeroActual);
    double resultado = 0;

    switch (operacion) {
      case '+':
        resultado = num1 + num2;
        break;
      case '-':
        resultado = num1 - num2;
        break;
      case '*':
        resultado = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          numeroActual = 'Error';
          return;
        } else {
          resultado = num1 / num2;
        }
        break;
      default:
        resultado = num2;
    }
    if (resultado % 1 == 0){
      numeroActual = resultado.toInt().toString();
    }else{
      numeroActual= resultado.toString();
    }
    numeroPrevio = '0';
    operacion = '';
  }

  void cambiarSingo() {
    if (numeroActual == '0' || numeroActual == 'Error') {
      return;
    } else {
      double num = double.parse(numeroActual);
      num = num * -1;

      if (num == num.toInt()){
        numeroActual = num.toInt().toString();
      }else{
        numeroActual = num.toString();
      }
    }
  }

  void aplicarPorcentaje(){
    double numero = double.parse(numeroActual);
    numero = numero / 100;
    numeroActual = numero.toString();
  }
}
// numero -> y este igual

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
