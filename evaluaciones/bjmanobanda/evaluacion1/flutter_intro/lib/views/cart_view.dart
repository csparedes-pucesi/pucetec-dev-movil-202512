import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('car'),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TOTAL A PAGAR 123.12 !'),

            ElevatedButton(
              onPressed: (){
              Navigator.pushReplacementNamed(context, '/');
            },
              child: const Text('REALIZAR COMPRA'),
            )
          ],
        ),
      ),
    );
  }
}  