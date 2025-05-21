import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Aquí usamos el widget CustomInputs para los campos
            CustomInputs(label: 'Email', hidden: false),
            const SizedBox(height: 16),
            CustomInputs(label: 'Password', hidden: true),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes manejar la acción del login
                // Asegúrate de agregar la lógica de validación más adelante
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Login pressed!')),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputs extends StatelessWidget {
  const CustomInputs({
    super.key,
    required this.label,
    required this.hidden,
  });

  final String label;
  final bool hidden;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hidden, 
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
