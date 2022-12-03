````
// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/user.dart';
import 'Painters/Painters.dart';

void main() => runApp(My_App());

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: FutureBuilder<User>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  User user = snapshot.data!;
                  return Template(user: user);
                }
                return const Center(child: CircularProgressIndicator());
              })),
    );
  }
}

class Template extends StatelessWidget {
  final User user;
  const Template({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registro de Usuarios",
      home: Scaffold(
        body: Stack(
          children: [
            Background1(),
            Background2(),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 80.0),
                  Text("${user.data!.firstName!} ${user.data!.lastName!}",
                      style: const TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10.0),
                  Text(user.data!.email!,
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white)),
                  const SizedBox(height: 140.0),
                  CircleAvatar(
                      backgroundImage: NetworkImage(user.data!.avatar!),
                      radius: 100.0),
                  const SizedBox(height: 20.0),
                  Text("ID de usuario: ${user.data!.id!.toString()}",
                      style: const TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 87, 35, 100),
                          fontWeight: FontWeight.w800)),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 40.0,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.tiktok,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      Icon(Icons.snapchat,
                          size: 40.0, color: Color.fromARGB(255, 238, 255, 0))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<User> getData() async {
  final url = Uri.https('reqres.in', '/api/users/2');
  final res = await http.get(url);
  return userFromJson(res.body);
}