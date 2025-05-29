import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Grocery App Store DF',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginGrS(),
        '/home': (context) => const Principal(),
        '/products': (context) => const Productos(),
        '/cart': (context) => const Carrito(),
        '/confirmation': (context) => const Confirmacion()
      },
    ),
  );
}

class LoginGrS extends StatelessWidget {
  const LoginGrS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Ingresa Broder',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 44),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: false,
            ),
            const SizedBox(height: 58),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: Color.fromARGB(255, 78, 187, 115),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery App Store DF'),
        backgroundColor: Color.fromARGB(255, 43, 198, 136),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bienvenido Broderrrrr',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/products');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: Color.fromARGB(255, 78, 187, 115),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text(
                'Mira nuestros productos broderr',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery App Store - Productos'),
        backgroundColor: Color.fromARGB(255, 43, 198, 136),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Onion'),
                trailing: Icon(Icons.done)),
            const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Apple'),
                trailing: Icon(Icons.done)),
            const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('TomaMango'),
                trailing: Icon(Icons.done)),
            const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Tomato'),
                trailing: Icon(Icons.done)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: Color.fromARGB(255, 78, 187, 115),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text(
                'Vamo al carrito broderr!',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carrito extends StatelessWidget {
  const Carrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito'),
        backgroundColor: Color.fromARGB(255, 43, 198, 136),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'TOTAL: "123.12"',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/confirmation');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: Color.fromARGB(255, 78, 187, 115),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text(
                'Confirmalo pues ñañoosh',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Confirmacion extends StatelessWidget {
  const Confirmacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmación'),
        backgroundColor: Color.fromARGB(255, 43, 198, 136),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Compra exitosa mi llaveeee',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
                backgroundColor: Color.fromARGB(255, 78, 187, 115),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text(
                'Vamo al inicio broderr!',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
