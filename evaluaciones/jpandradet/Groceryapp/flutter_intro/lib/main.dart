import 'package:flutter/material.dart';
import 'views/login_view.dart';
import 'views/home_view.dart';
import 'views/products_view.dart';
import 'views/cart_view.dart';
import 'views/confirmation_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/products': (context) => const ProductsScreen(),
        '/cart': (context) => const CartScreen(),
        '/confirmation': (context) => const ConfirmationScreen(),
      },
    );
  }
}