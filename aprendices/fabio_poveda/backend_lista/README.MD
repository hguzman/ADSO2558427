# Desarrollo Con peticion GET a Backend Lista Objetos

## Main

~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:application_2/models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App_2',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Chats'),
          ),
          body: FutureBuilder<List<User>>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<User> users = snapshot.data!;
                return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      final user = users[index];
                      return ItemData(user: user);
                    });
              }
              return Center(child: CircularProgressIndicator());
            },
          )),
    );
  }

  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in', '/api/users');
    final resp = await http.get(url);
    print('Respuesta ${resp.body}');
    return userFromJson(resp.body);
  }
}

class ItemData extends StatelessWidget {
  final User user;
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user.firstName!} ${user.lastName!}'),
      leading: Image(image: NetworkImage(user.avatar!)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
~~~

___

## User

~~~
import 'package:application_2/main.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str)['data'].map((x) => User.fromJson(x)));

class User {
  User({
    this.correoElectrnico,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  String? correoElectrnico, firstName, lastName, avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        correoElectrnico: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );
}
~~~