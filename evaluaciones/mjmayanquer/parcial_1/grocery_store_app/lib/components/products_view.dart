import 'package:flutter/material.dart';
import 'package:grocery_store_app/components/carrito_view.dart';

class ProductsComponent extends StatelessWidget {
  const ProductsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Productos")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                  leading: Icon(Icons.food_bank),
                  title: Text("Pan"),
                ),
                ListTile(
                  leading: Icon(Icons.food_bank_rounded),
                  title: Text("Mermelada"),
                ),
                ListTile(
                  leading: Icon(Icons.coffee),
                  title: Text("Cafe"),
                ),
                ListTile(
                  leading: Icon(Icons.shop_2),
                  title: Text("Leche"),
                ),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CarritoComponent(),
                    ),
                  );
                },
                child: Text("Ir a carrito"),
              ),
            ],
          ),
        ),
      
    );
  }
}
