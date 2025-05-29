import 'package:flutter/material.dart';
import 'package:grocery_store_app/components/products_view.dart';

class HomeViewComponent extends StatelessWidget {
  const HomeViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pagina Home"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bienvenido!", style: TextStyle(fontSize: 23, color: Colors.deepPurpleAccent)),
              ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductsComponent()),
              );
            }, child: Text("Ir a productos")), 
            ],
          ),
        ),
      ),
    );
  }
} 