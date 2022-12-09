# Desarrollo Con peticion GET a Backend un Objeto

## Main

~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prueba_1/models/user.dart';
import 'package:prueba_1/widgets/template.dart';

void main() {
  runApp(Pepito());
}

class Pepito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primer app',
      home: Scaffold(
          appBar: AppBar(title: const Text('Primerita app')),
          body: FutureBuilder<User>(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                User user = snapshot.data as User;
                return Template(user: user);
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

## Template

~~~
import 'package:prueba_1/models/user.dart';
import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  const Template({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15.0),
        Text(
          (user.nombre!),
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 15.0),
        Image(image: NetworkImage(user.avatar!)),
        const SizedBox(height: 15.0),
        Text(
          (user.email!),
          style: const TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.black,
              size: 16.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.favorite,
              color: Colors.green,
              size: 16.0,
            )
          ],
        )
      ],
    );
  }
}
~~~
