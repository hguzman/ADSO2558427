## User
~~~
import 'dart:convert' as convert;

class User {
  String? nombre;
  String? avatar;
  String? email;

  User(String json) {
    final JsonResponse = convert.jsonDecode(json);
    nombre = JsonResponse["data"]["first_name"];
    avatar = JsonResponse["data"]["avatar"];
    email = JsonResponse["data"]["email"];
  }
}
~~~

## Template
~~~
import 'package:flutter/material.dart';
import '../models/user.dart';

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
        SizedBox(height: 15.0),
        Text(
          user.nombre!,
          style: TextStyle(fontSize: 25.0),
        ),
        Image(
          image: NetworkImage(user.avatar!, scale: 1.0),
        ),
        Text(
          user.email!,
          style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.email,
              color: Colors.red,
              size: 34.0,
            ),
            Icon(
              Icons.facebook,
              color: Colors.blue,
              size: 35.0,
            ),
            Icon(
              Icons.whatshot_sharp,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        )
      ],
    );
  }
}
~~~

## Main
~~~
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;
import 'widgets/template.dart';

void main() => runApp(Sena());

class Sena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sena',
      home: Scaffold(
          appBar: AppBar(
            title: Text('my app'),
          ),
          body: FutureBuilder<User>(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                User user = snapshot.data as User;
                return Template(user: user);
              }
              return Center(child: CircularProgressIndicator());
            },
          )),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/10');
    final response = await http.get(url);
    return User(response.body);
  }
}
~~~