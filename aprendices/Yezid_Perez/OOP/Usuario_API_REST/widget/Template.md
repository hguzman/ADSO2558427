```
import 'package:sena_example/main.dart';
import 'package:sena_example/models/user.dart';

import 'package:flutter/material.dart';

class Template extends StatefulWidget {
  final user userA;

  Template({Key? key, required this.userA}) : super(key: key);

  @override
  State<Template> createState() => _TemplateState(userA);
}

class _TemplateState extends State<Template> {
  user userA;

  _TemplateState(this.userA);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        Text(
          userA.nombre,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15.0),
        Image(image: NetworkImage(userA.avatar), height: 140),
        SizedBox(height: 15.0),
        Text(
          userA.email,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.library_add,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.android,
              color: Colors.green,
              size: 28.0,
            )
          ],
        )
      ],
    );
  }
}
```