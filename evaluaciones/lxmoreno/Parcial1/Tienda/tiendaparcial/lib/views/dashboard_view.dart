import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bienvenido a la pantalla principal'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
                padding: const EdgeInsets.symmetric(vertical: 16), 
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/productos');
                },
                child: const Text('Ir a productos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}