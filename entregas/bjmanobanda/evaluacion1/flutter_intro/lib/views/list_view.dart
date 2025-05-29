
import 'package:flutter/material.dart';

class ListProductsView extends StatelessWidget {
  const ListProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Productos')),
      body: const Center(
        child: Text(
          'Aquí se mostraran los productos',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
