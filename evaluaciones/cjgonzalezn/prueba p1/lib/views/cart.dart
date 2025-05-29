import 'package:flutter/material.dart';
import 'package:parcial1_app/views/confirmation.dart';

void main() => runApp(const cart());
class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('cart')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text( 'Total: "123.12"', style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,),
              ),
              SizedBox(height: 10),
               SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => confirmation()));}, child: Text('Realizar Compra', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.red),)),
              ),
            
          ],
        ),
      ),
    );
  }
}