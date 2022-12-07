# Main
``` 
import 'dart:html';

import 'package:flutter/material.dart';
import 'widget/template.dart';
import 'package:http/http.dart' as http;
import 'models/user.dart';
import 'widget/background.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myapp',
      home: Scaffold(
          body: FutureBuilder<User>(
        future: getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            User user = snapshot.data as User;
            return Stack(children: [
              Background1(),
              Positioned(
                top: 69.0,
                left: 59.0,
                right: 59.0,
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
                      Text(
                        user.nombre!,
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0),
                      Text(user.email!),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.blue,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
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
            ]);
          }
          return Center(child: CircularProgressIndicator());
        },
      )),
    );
  }
``` 
# Template
``` 
import 'package:flutter/material.dart';
import 'package:stackflutter_example/models/user.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 5.0),
      Text(
        user.nombre!,
        style: TextStyle(fontSize: 25.0,),
      ),
      SizedBox(
        height: 9.0,
      ),
      Image(
        image: NetworkImage(user.avatar!),
        height: 300.0,
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(user.email!),
      SizedBox(
        height: 5.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.mail,
            color: Colors.red,
            size: 24.0,
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
    ]);
  }
}
``` 
# codigo del Background
``` 
import 'package:flutter/material.dart';
import 'package:stackflutter_example/main.dart';

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
    final lapiz = Paint();
    // Propiedades
    lapiz.color = Colors.blue;
    lapiz.style = PaintingStyle.fill;
    // lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 8.0;

    final path = Path();
    // dibujar con el path y lapiz

    // path.moveTo(0, size.height * 0.7);
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.6,
      size.width * 0.5, size.height * 0.4);

    path.quadraticBezierTo(
      size.width * 0.8,
      size.width * 0.20,
      size.width * 0.99,
      size.width * 0.40,
    );

    path.lineTo(size.width, size.height * 0.34);
    path.lineTo(size.width, 0.4);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
``` 
# user
``` 
import 'dart:convert' as convert;

class User {
  String? nombre;
  String? avatar;
  String? email;

  User(String json) {
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];
  }
}
``` 
