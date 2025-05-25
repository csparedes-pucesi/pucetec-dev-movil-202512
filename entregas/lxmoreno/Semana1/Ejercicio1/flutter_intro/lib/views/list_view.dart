
import 'package:flutter/material.dart';

class ListProductsView extends StatelessWidget {
  const ListProductsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('LLegaste al list view'),
      ),
      body: ListView(
  children: [
    ListTile(
      title: Text('Producto 1'),
      subtitle: Text('Descripción del producto'),
    ),
    ListTile(
      title: Text('Producto 2'),
    ),
  ],
)

    );
  }
}