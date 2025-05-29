import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Arroz'),
                      trailing: Icon(Icons.check),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Leche'),
                      trailing: Icon(Icons.check),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Huevos'),
                      trailing: Icon(Icons.check),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Pan'),
                      trailing: Icon(Icons.check),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/cart');
              },
              child: const Text('Ir al carrito'),
            ),
          ],
        ),
      ),
    );
  }
}
