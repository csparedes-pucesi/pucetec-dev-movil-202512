import 'package:flutter/material.dart';
import 'package:flutter_intro/views/feature_view.dart';
import 'package:flutter_intro/views/profile_view.dart';
import 'views/login_view.dart'; 
import 'views/dashboard_view.dart'; 
import 'views/list_view.dart';

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
        '/dashboard': (context) => const DashboardView(),
        '/feature': (context) => const FeatureView(),
        '/profile': (context) => const ProfileView(),
        '/list_view': (context) => const ListProductsView(),
      },
    );
  }
}
