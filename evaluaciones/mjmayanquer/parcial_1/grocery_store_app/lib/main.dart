import 'package:flutter/material.dart';
import 'package:grocery_store_app/components/login_view.dart';

/*
    MARTIN MAYANQUER
*/

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: GlobalFormText())),
    );
  }
}
