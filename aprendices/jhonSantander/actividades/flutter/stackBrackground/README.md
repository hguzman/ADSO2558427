<h2 align="center">widget Stack - sobreponiendo contenido</h2>

<p align=center><img src="https://i.imgur.com/T3Hfa8t.png"></p>

**Nota:** Hecho en pantalla de iphone X SE con emulador de Chrome

- [Ver repositorio del ejercicio](https://github.com/GoJhon/CustomPaint-Stack-y-Positioned)

- [Descargar ejercicio](https://github.com/GoJhon/CustomPaint-Stack-y-Positioned/releases/tag/1.0.0)

<h3 align=center>Codigo del Main</h3>

```
import 'package:flutter/material.dart';
import 'package:hojavida/widgets/template.dart';
import 'package:http/http.dart' as http;
import 'model/user.dart';
import 'widgets/background.dart';

void main() {
  runApp(MyApp());
  }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Contactos',
      home: Scaffold( 
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Stack(
                children: [
                  Background1(),
                  Template(user: user),
                  Positioned(
                    top: 70.0,
                    left: 60.0,
                    right: 60.0,
                    child: Container(
                      width: 130.0,
                      height: 100.0,
                      child: Image(
                        image: NetworkImage(user.avatar!),
                        height: 300.0,
                      ),
                    
                    ),
                    
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 60.0,
                    right: 60.0,
                    child: Container(
                      width: 190.0,
                      height: 150.0,
                      child: Column(
                        children: [
                          SizedBox(height: 5.0),
                          Text(user.nombre!,style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), ),
                          SizedBox(height: 5.0),
                          Text(user.email!),
                          SizedBox(height: 5.0),
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
                        ],
                      ),
                    ),
                  ),

                ]
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/4');
    final response = await http.get(url);
    return User(response.body);
  }
}
```

<h3 align=center>Codigo de User</h3>

```
import 'dart:convert' as convert;

class User{
  String? nombre;
  String? avatar;
  String? email;

  User(String json){
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];

  }
}
```

<h3 align=center>Codigo de Background</h3>


```
import 'package:flutter/material.dart';
import 'package:hojavida/main.dart';

import 'package:flutter/material.dart';

class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPainter(),
      ),
    );
  }
}

class _HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    // Propiedades
    lapiz.color = Colors.red;
    lapiz.style = PaintingStyle.fill;
    // lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 8.0;

    final path = new Path();
    // dibujar con el path y lapiz

    // path.moveTo(0, size.height * 0.7);
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(
    size.width * 0.2, size.height * 0.5, size.width * 0.4, size.height * 0.4
    );
    path.quadraticBezierTo(
    size.width * 0.7, size.width * 0.4, size.width * 0.9, size.width * 0.54
    );

    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
```