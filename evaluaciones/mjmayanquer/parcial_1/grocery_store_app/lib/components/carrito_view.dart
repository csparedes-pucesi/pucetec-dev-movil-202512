import 'package:flutter/material.dart';
import 'package:grocery_store_app/components/confirmacion_view.dart';

class CarritoComponent extends StatelessWidget {
  const CarritoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Carrito de compra"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total: 123.12", style: TextStyle(fontSize: 23, color: const Color.fromARGB(255, 3, 136, 59))),
              ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfirmacionComponent()),
              );
            }, child: Text("Realizar compra")), 
            ],
          ),
        ),
      ),
    );
  }
}