import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://e7.pngegg.com/pngimages/549/560/png-clipart-computer-icons-login-scalable-graphics-email-accountability-blue-logo.png',
            ),
            const CustomInputs(label: 'Email', hidden: false),
            const SizedBox(height: 16),
            const CustomInputs(label: 'Password', hidden: true),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: const Text('Dashboard'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/list_view');
              },
              child: const Text('Ir al list view'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/feature');
              },
              child: const Text('Ir a feature'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: const Text('Ir a profile'),
            ),
            ElevatedButton(onPressed:(){
              Navigator.pushReplacementNamed(context, '/login');
            }
          ],
        ),
      ),
    );
  }
}
