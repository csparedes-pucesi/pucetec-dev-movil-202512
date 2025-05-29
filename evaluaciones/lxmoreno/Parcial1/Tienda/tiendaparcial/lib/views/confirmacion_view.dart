import 'package:flutter/material.dart';

class ConfirmacionView extends StatelessWidget {
  const ConfirmacionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmacion')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Compra realizada con exito'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ), 
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Ir a inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
