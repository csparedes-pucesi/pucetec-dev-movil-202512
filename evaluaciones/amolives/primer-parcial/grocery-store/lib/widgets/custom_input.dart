import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final bool hide;

  const CustomInput({
    super.key,
    required this.label,
    this.hide = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        obscureText: hide, // oculta texto si es contraseña
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
