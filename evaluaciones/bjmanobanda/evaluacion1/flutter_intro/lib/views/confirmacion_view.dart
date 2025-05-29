import 'package:flutter/material.dart';

class ConfirmacionView extends StatelessWidget {
  const ConfirmacionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pestaña de confirmacion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('compra realizada con exito!'),
            ElevatedButton(
              onPressed: (){
              Navigator.pushReplacementNamed(context, '/login');
            },
              child: const Text('seguir comprando y volver al login'),
            )
          ],
        ),
      ),
    );
  }
}  