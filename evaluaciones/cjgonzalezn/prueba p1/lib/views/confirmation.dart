import 'package:flutter/material.dart';
import 'package:parcial1_app/views/login.dart';
void main() => runApp(const confirmation());

class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('confirmation')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text( '¡Compra realizada con éxito!', style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,),
              ),
              SizedBox(height: 10),
               SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => login()));}, child: Text('Ir a inicio', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.red),)),
              ),
            
          ],
        ),
      ),
    );
  }
}