import 'package:flutter/material.dart';
import 'package:parcial1_app/views/home.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),

              // Campo de texto para la Contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home()));}, child: Text('Login')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}