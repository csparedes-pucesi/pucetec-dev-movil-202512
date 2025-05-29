import 'package:flutter/material.dart';
import 'package:parcial1_app/views/products.dart';

void main() => runApp(const home());
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('home')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text( 'Bienvenidos', style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,),
              ),
              SizedBox(height: 10),
               SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => products()));}, child: Text('Ir a productos', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.red),)),
              ),
            
          ],
        ),
      ),
    );
  }
}