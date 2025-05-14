import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo de la pantalla
      backgroundColor: Colors.black,

      // Cuerpo de la pantalla
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Título de la página
              Text(
                'CH30',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2),

              Text(
                'Por favor inicia sesión para continuar',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              SizedBox(height: 20),

              // Campo de texto para el Usuario
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

              // Botón para Iniciar sesión
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 68, 67, 67),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
