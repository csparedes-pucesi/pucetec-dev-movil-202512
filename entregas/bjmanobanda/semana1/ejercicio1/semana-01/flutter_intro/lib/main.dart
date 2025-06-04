import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación', // Título de la aplicación
      home: const LoginPage(), // Establece la página de inicio de la aplicación
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Clave para el formulario

  @override
  void dispose() {
    // Limpia los controladores cuando el widget se elimina
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'), // Título de la barra de la aplicación
        centerTitle: true, // Centra el título
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Añade un relleno alrededor del cuerpo
        child: Form( // Envuelve el contenido en un Form
          key: _formKey, // Asigna la clave al formulario
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos verticalmente
            crossAxisAlignment: CrossAxisAlignment.stretch, // Estira los elementos horizontalmente
            children: <Widget>[
              // Etiqueta para el nombre de usuario
              const Text(
                'Ingrese su nombre de usuario',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Alinea el texto a la izquierda
              ),
              const SizedBox(height: 8.0), // Espacio entre la etiqueta y el campo de texto
              // Campo de texto para el nombre de usuario
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.text, // Teclado para texto
                decoration: const InputDecoration(
                  hintText: 'Nombre de usuario', // Texto de sugerencia
                  border: OutlineInputBorder(), // Borde del campo de texto
                ),
                validator: (value) { // Validador para el campo de texto
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su nombre de usuario'; // Mensaje de error
                  }
                  return null; // El valor es válido
                },
              ),
              const SizedBox(height: 16.0), // Espacio entre campos de texto
              // Etiqueta para la contraseña
              const Text(
                'Ingrese su contraseña',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 8.0),
              // Campo de texto para la contraseña
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Oculta la contraseña
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su contraseña';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24.0), // Espacio antes del botón
              // Botón para iniciar sesión
              ElevatedButton(
                onPressed: () { // Acción al presionar el botón
                  if (_formKey.currentState!.validate()) { // Valida el formulario
                    // Aquí iría la lógica de inicio de sesión (por ejemplo, verificar credenciales)
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    // Muestra un mensaje simple para indicar que se presionó el botón.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Iniciando sesión con usuario: $username, contraseña: $password'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: const Text('Ingresar', style: TextStyle(fontSize: 18.0)), // Texto del botón
              ),
              const SizedBox(height: 12.0), // Espacio después del botón
              // Texto para recuperar contraseña
              TextButton(
                onPressed: () {
                  // Navegar a la página de recuperación de contraseña (si existe)
                  // Por ahora, muestra un mensaje.
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Clic para recuperar contraseña'),
                        duration: Duration(seconds: 2),
                      )
                  );
                },
                child: const Text('Si olvidaste tu usuario haz click aquí'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

