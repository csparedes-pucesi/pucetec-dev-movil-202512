import 'package:flutter/material.dart';

class CustomInputs extends StatelessWidget {
  const CustomInputs({
    super.key,
    required this.label,
    required this.hidden,
  });

  final String label;
  final bool hidden;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hidden, 
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}