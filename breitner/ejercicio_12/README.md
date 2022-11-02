## flutter

~~~

import 'package:flutter/material.dart';

void main(){
  runApp(Sena());
}

class Sena extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer App',
      home: Scaffold(
        appBar: AppBar(title: Text('Titulo App')),
        body: Text('Hola sena'),
      ),
       
    );
  }
}

~~~