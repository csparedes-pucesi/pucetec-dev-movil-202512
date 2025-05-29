import 'package:flutter/material.dart';
import 'package:grocery_store_app/main.dart';

class ConfirmacionComponent extends StatelessWidget {
  const ConfirmacionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Confirmacion"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¡Compra realizada con exito!", style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 220, 125, 16))),
              ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainApp()),
              );
            }, child: Text("Ir a inicio")), 
            ],
          ),
        ),
      ),
    );
  }
}