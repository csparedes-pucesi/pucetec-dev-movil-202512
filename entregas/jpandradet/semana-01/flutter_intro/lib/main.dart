import 'package:flutter/material.dart';
import 'package:flutter_intro/widgets/custom_input.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Login Page')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomInput(label: 'Email', hide: false),
            CustomInput(label: 'Password', hide: true),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Login')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}