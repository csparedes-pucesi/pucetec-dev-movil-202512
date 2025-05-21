import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final String label;
  final VoidCallback? onPressed; // Esta es la propiedad clave que necesitas
  final bool big; // Para botones grandes como el '0' en algunas calculadoras

  const ButtonWidget({
    super.key,
    required this.bgColor,
    required this.label,
    this.onPressed, // Asegúrate de que esté aquí en el constructor
    this.big = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5), // Margen alrededor de cada botón
      child: SizedBox(
        width: big ? 160 : 70, // Ancho del botón (más grande si 'big' es true)
        height: 70, // Altura del botón
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor, // Color de fondo del botón
            shape: const CircleBorder(), // Forma circular
            padding: const EdgeInsets.all(10), // Relleno interno
          ),
          onPressed: onPressed, // Asigna la función onPressed aquí
          child: Text(
            label, // Etiqueta del botón
            style: const TextStyle(fontSize: 30, color: Colors.white), // Estilo del texto
          ),
        ),
      ),
    );
  }
}
