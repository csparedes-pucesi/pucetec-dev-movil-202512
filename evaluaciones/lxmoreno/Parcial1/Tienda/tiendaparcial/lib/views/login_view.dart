import 'package:flutter/material.dart';
import 'package:tiendaparcial/services/login.service.dart';
import 'package:tiendaparcial/widgets/button_widget.dart';

class LoginViewPrueba extends StatelessWidget {
  const LoginViewPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalFormTextWidget(
              label: 'Usuario',
              controller: usuarioController,
            ),
            const SizedBox(height: 16),
            GlobalFormTextWidget(
              label: 'Password',
              controller: passwordController,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                print('${usuarioController.text}${passwordController.text}');
                login(usuarioController.text, passwordController.text);
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
