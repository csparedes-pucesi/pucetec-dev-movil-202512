import 'package:flutter/material.dart';
import '../widgets/custom_input.dart'; 

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('ir al home'),
            )
          ],
        ),
      ),
    );
  }
}



                                                                