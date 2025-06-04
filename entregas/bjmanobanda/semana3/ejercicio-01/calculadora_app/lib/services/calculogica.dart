import 'package:math_expressions/math_expressions.dart'; // Importa la librería para expresiones matemáticas

class Calculation {
  // Método para evaluar una expresión matemática dada como una cadena
  String calculate(String expression) {
    try {
      // Crea un analizador de expresiones
      Parser p = Parser();
      // Parsea la expresión de cadena en un objeto Expression
      Expression exp = p.parse(expression);
      // Crea un modelo de contexto para la evaluación
      ContextModel cm = ContextModel();
      // Evalúa la expresión y obtiene el resultado como un número de punto flotante
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      // Retorna el resultado convertido a una cadena
      return eval.toString();
    } catch (e) {
      // En caso de error (por ejemplo, expresión inválida), retorna "Error"
      return "Error";
    }
  }
}
