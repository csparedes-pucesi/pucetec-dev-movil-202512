import 'package:flutter/material.dart';
import 'package:grocery_store_app/components/home_view.dart';

class GlobalFormText extends StatelessWidget {
  const GlobalFormText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "ingresa tu correo",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Contraseña",
              hintText: "ingresa tu contraseña",
            ),
            obscureText: true,
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeViewComponent()),
            );
          }, child: Text("Iniciar sesion")), 
          
        ],
      ),
    );
  }
}
