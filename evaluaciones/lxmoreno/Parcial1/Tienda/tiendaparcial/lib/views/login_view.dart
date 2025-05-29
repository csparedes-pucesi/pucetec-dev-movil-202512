import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';

class LoginViewPrueba extends StatelessWidget {
  const LoginViewPrueba({super.key});


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
            const CustomInputs(label: 'Email', hidden: false),
            const SizedBox(height: 16),
            const CustomInputs(label: 'Password', hidden: true),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, 
              foregroundColor: Colors.white, 
              padding: const EdgeInsets.symmetric(vertical: 16), 
               ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: const Text('Iniciar sesion'),
            ),
          ],
        ),
      ),
    );
  }
}
