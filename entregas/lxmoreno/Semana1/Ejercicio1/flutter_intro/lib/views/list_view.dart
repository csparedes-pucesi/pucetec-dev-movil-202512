
import 'package:flutter/material.dart';

class ListProductsView extends StatelessWidget {
  const ListProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final IconData icon = Icons.shopping_bag;

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
      leading: Icon(icon),
      title: Text('Producto 2'),
      subtitle: Text('#54'),
      selected: true,
      trailing: Icon(icon),
    ),
  ],
)

    );
  }
}