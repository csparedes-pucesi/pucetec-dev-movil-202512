import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('Celular alta gama'),
            subtitle: Text('Samsung galaxy 24 ultra'),
          ),
          ListTile(
            leading: Icon(Icons.tv),
            title: Text('Pantalla'),
            subtitle: Text('Pantalla delgada de 56 pulgadas con 4k'),
          ),
          ListTile(
            leading: Icon(Icons.videogame_asset),
            title: Text('Consola'),
            subtitle: Text('Play station 5, 4k, 1tb'),
          ),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Teclado'),
            subtitle: Text('Teclado mecanico con luces rgb'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, 
            foregroundColor: Colors.white, 
            padding: const EdgeInsets.symmetric(vertical: 16), 
            ),
            
            onPressed:() {
            Navigator.pushReplacementNamed(context, '/carrito');
          }, 
          child: const Text('Ir a carrito'),
          )
        ],
      ),
    );
  }
}
