import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String label;
  final VoidCallback? onPressed;  // Puede ser null

  const ButtonWidget({
    super.key,
    required this.bgColor,
    required this.label,
    this.textColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,  // Si es null, botón deshabilitado, sino activo
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: bgColor, 
        foregroundColor: textColor,
        // Aquí forzamos que el color de fondo siempre sea bgColor,
        // incluso cuando esté deshabilitado:
        disabledBackgroundColor: bgColor,
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
