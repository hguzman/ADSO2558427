``` 

import 'package:flutter/material.dart';

void main() {
  runApp(holamundo());
}

class holamundo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'www.identificate.com',
      home: Scaffold(
        appBar: AppBar (title: Text('Identificador de persona')),
        body: Column(
          children: [
            SizedBox(height: 25.0),
            Text ('Robert Lewandowski', style: TextStyle(fontSize: 25.0),),
            SizedBox(height: 20.0),
            const Image(
        image: NetworkImage('https://static1.elcomercio.es/www/multimedia/202209/30/media/cortadas/lewan-kv1E-U180215133172AOI-624x385@RC.JPG'),
      ),
      SizedBox(height: 20.0,),
      Text('lewangolski09@gmail.com', style: TextStyle(fontSize: 20.0),),
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
      Icons.telegram,
      color: Color.fromARGB(255, 48, 115, 231),
      size: 30.0,
    ),
    Icon(
      Icons.tiktok,
      color: Colors.black,
      size: 36.0,
    ),
  ],
)
        ],
      )

      ),
    );
  }
}

```  