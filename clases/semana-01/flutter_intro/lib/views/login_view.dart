import 'package:flutter/material.dart';
import 'DashboardView.dart'; // Importa la vista del dashboard
import '../widgets/custom_input.dart'; // Importa tu widget personalizado

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 32),

            // Campo de usuario usando CustomInput
            const CustomInput(label: 'Usuario', hide: false),
            const SizedBox(height: 16),

            // Campo de contraseña usando CustomInput
            const CustomInput(label: 'Contraseña', hide: true),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                // Navegación al Dashboard
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardView(),
                  ),
                );
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
