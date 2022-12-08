# MyApp List

### main
~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sena/widgets/template.dart';

import 'models/user.dart';
import 'package:sena/widgets/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App Sena',
      home: Scaffold(
        appBar: AppBar(title: const Text('Chats'), backgroundColor: Color.fromARGB(255, 126, 3, 3)),
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done){
              List<User> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index){
                  final user = users[index];
                  return ItemData (user: user);
                }
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in','/api/users');
    final res = await http.get(url);
      print('Respuesta ${res.body}');
     return userFromJson(res.body);

~~~

### template

~~~
import 'package:flutter/material.dart';
import 'package:sena/models/user.dart';

class ItemData extends StatelessWidget {
  final User user;
  const ItemData({
    Key? key,
    required this.user,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("${user.firstName!} ${user.lastName!}"),
          subtitle: Text(user.email!),
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 148, 61, 219),),
        ),
        Divider(),
      ],
    );
  }
}
~~~

### user

~~~
import 'dart:convert';
import 'package:sena/main.dart';

List<User> userFromJson(String str) =>List<User>.from(json.decode(str)["data"].map((x)=> User.fromJson(x)));
class User {
  User({
    this.email,
    this.firstName,
    this.lastName,
    this.avatar
  });

  String? firstName;
  String? lastName;
  String? avatar;
  String? email;

  factory User.fromJson(Map<String, dynamic> json) => User (
    
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
    email: json["email"]
  );
}
~~~