<h2 align=center>Flutter - Primer codigo</h2>

```
import 'package:flutter/material.dart';

void main(){
  runApp(Sena());
}

class Sena extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jhon',
      home: Scaffold (
        appBar: AppBar(title: Text('App de Jhon')),
        body: Text('Hola mundo'), 
        ),
    );
  }
}
```