### ejercicio 1 APP en flutter 

~~~~
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My application',
      home: Scaffold(
          appBar: AppBar(title: Text('Aplicacion ventana')),
          body: Column(
            children: [
              SizedBox(height: 15.0),
              Text(
                'Zharick Donado',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 15.0),
              const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    scale: 2.0),
              ),
              SizedBox(height: 15.0),
              Text(
                'zharickdonado848@gmail.com',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.speaker_notes_sharp,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.send_and_archive_outlined,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
~~~~