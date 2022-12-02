## main

~~~
import 'package:flutter/material.dart';
import 'widgets/Template.dart';
import 'widgets/user.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
        title: Text('Usuario'),
      ),
      body: FutureBuilder<User>(
        future: getUser(),
        builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState) {
             User user = snapshot.data as User;
             return Template(user: user);
        }
        return Center(child: CircularProgressIndicator(),);
        }),
      ),
    );
  }

Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/2');
    final response = await http.get(url);
}
}
~~~

## Template

~~~
import 'package:flutter/material.dart';
import 'user.dart';

class Template extends StatelessWidget {
  const Template({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0,),
        Text(user.nombre!,style: TextStyle(fontSize: 25.0),),
        SizedBox(height: 15.0,),
        Image(image: NetworkImage(user.avatar!),),
        SizedBox(height: 15.0,),
        Text(user.email!,style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.facebook,
              color: Colors.blue,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.email,
              color: Colors.red,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Color.fromARGB(255, 131, 33, 243),
              size: 36.0,
            )
          ],
        )
      ],
    );
  }
}
~~~

## User

~~~
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
~~~