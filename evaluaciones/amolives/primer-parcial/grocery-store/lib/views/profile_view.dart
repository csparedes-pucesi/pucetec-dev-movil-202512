import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: const Center(
        child: Text(
          'Esta es la vista del perfil de usuario',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
