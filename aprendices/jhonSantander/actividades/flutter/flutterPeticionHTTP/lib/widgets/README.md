<h2 align="center">Widget Plantilla (contenido de la aplicación)</h2>

```
import 'package:flutter/material.dart';
import 'package:hojavida/model/user.dart';


class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.0),
        Text(user.nombre!,style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), ),
        SizedBox(height: 9.0,),
        Image(
          image: NetworkImage(user.avatar!),
          height: 300.0,
        ),
        SizedBox(height: 5.0,),
        Text(user.email!),
        SizedBox(height: 5.0,),
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.mail,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.add_ic_call_rounded,
              color: Colors.red,
              size: 30.0,
            ),
            Icon(
              Icons.facebook,
              color: Colors.red,
              size: 36.0,
            ),
          ],
        ),
      ]
    );
  }
}
```