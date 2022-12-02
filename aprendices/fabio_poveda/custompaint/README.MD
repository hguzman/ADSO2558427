# CustomPaint, Stack y positioned

## Main

~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nueva_aplicacion/models/user.dart';
import 'package:nueva_aplicacion/widgets/background.dart';
import 'package:nueva_aplicacion/widgets/template.dart';

void main() {
  runApp(Pepito());
}

class Pepito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primer app',
      home: Scaffold(
          body: FutureBuilder<User>(
        future: getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            User user = snapshot.data as User;
            return Stack(children: [
              Background1(),
              Template(
                user: user,
              ),
              Positioned(
                top: 140.0,
                left: 60.0,
                right: 60.0,
                child: Container(
                  width: 130.0,
                  height: 150.0,
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
                      SizedBox(height: 10.0),
                      Text(user.nombre!),
                      SizedBox(height: 10.0),
                      Text(user.email!),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.green,
                            size: 35.0,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.green,
                            size: 35.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]);
          }
          return const Center(child: CircularProgressIndicator());
        },
      )),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/3');
    final response = await http.get(url);
    return User(response.body);
  }
}
~~~

___

## User

~~~
import 'dart:convert' as convert;

class User {
  String? nombre, avatar, email;

  User(String json) {
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];
  }
}
~~~

___

## Background

~~~
import 'package:flutter/material.dart';
import 'package:nueva_aplicacion/main.dart';

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
    lapiz.color = Colors.green;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 8.0;

    final path = Path();

    path.lineTo(5, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.30, size.height * 0.4, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter olDelegate) {
    return true;
  }
}
~~~
