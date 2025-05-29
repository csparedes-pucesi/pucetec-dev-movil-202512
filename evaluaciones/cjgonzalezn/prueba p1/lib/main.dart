import 'package:flutter/material.dart';
import 'package:parcial1_app/views/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: login(),);
    
  }
}