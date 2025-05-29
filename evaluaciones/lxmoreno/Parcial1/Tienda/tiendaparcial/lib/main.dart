import 'package:flutter/material.dart';
import 'package:tiendaparcial/views/carrito_view.dart';
import 'package:tiendaparcial/views/confirmacion_view.dart';
import 'package:tiendaparcial/views/dashboard_view.dart';
import 'package:tiendaparcial/views/login_view.dart';
import 'package:tiendaparcial/views/products_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginViewPrueba(),
        '/dashboard': (context) => const DashboardView(),
        '/productos': (context) => const ProductsView(),
        '/carrito': (context) => const CarritoView(),
        '/confirmacion': (context) => const ConfirmacionView(),
      },
    );
  }
}
