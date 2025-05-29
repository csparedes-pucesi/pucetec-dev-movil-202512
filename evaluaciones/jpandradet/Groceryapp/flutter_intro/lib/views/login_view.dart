import 'package:flutter/material.dart';
import '../widgets/global_form_text.dart';
import '../widgets/global_form_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Grocery Store',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(215, 0, 0, 233)
                  
                ),
              ),
              const SizedBox(height: 32.0),
              const GlobalFormText(
                label: 'Usuario',
              ),
              const SizedBox(height: 16.0),
              const GlobalFormText(
                label: 'Contraseña',
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              GlobalFormButton(
                label: 'Iniciar sesión',
                onTap: () => Navigator.pushNamed(context, '/home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}