import 'package:flutter/material.dart';
import 'package:flutter_intro/views/cart_view.dart';
import 'package:flutter_intro/views/confirmacion_view.dart';
import 'views/login_view.dart'; 
import 'views/productos.dart'; 
import 'views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/', 
      routes: {
        '/': (context) => const LoginView(),
        '/home': (context) => const HomeView(),
        '/productos': (context) => const Productos(),
        '/cart': (context) => const CartView(),
        '/confirmacion': (context) => const ConfirmacionView(),
      },
    );
  }
}                             