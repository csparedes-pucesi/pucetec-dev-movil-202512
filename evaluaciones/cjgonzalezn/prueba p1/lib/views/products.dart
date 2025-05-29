import 'package:flutter/material.dart';
import 'package:parcial1_app/views/cart.dart';

void main() => runApp(const products());
class products extends StatelessWidget {
  const products({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('products')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
            title: const Text(
              'PlayStation5',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.gamepad, color: Colors.blue[500]),
          ),
          ListTile(
            title: const Text(
              'Iphone 15',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.smartphone_sharp, color: Colors.blue[500]),
          ),
          ListTile(
            title: const Text('Balon de futbol'),
            leading: Icon(Icons.sports_soccer, color: Colors.blue[500]),
          ),
             ListTile(
            title: const Text('Balon de basketball '),
            leading: Icon(Icons.sports_basketball, color: Colors.blue[500]),
            
          ), 
              SizedBox(height: 10),
               SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => cart()));}, child: Text('Ir a carrito', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.red),)),
              ),
            
          ],
        ),
      ),
    );
  }
}