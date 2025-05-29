import 'package:flutter/material.dart';

class FeaturesView extends StatelessWidget {
  const FeaturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Funciones')),
      body: const Center(
        child: Text(
          'Aquí se mostraran las caracteristicas',
          style: TextStyle(fontSize: 20),
        
        ),
        
      ),
      
    );
  }
}
