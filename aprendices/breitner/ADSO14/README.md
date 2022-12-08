## Desarrollo con peticion GET a backend lista de objetos

### user
~~~
import 'dart:convert' as convert;
import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str)['data'].map((x) => User.fromJson(x)));

class User {
  User({
    this.correoElectronico,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  String? correoElectronico;
  String? firstName;
  String? lastName;
  String? avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        correoElectronico: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
      );
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
          user.firstName!,
          style: TextStyle(fontSize: 25.0),
        ),
        Image(
          image: NetworkImage(user.avatar!, scale: 1.0),
        ),
        Text(
          user.correoElectronico!,
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

## main
~~~
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Sena());

class Sena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sena',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<User> users = snapshot.data!;
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final User = users[index];
                    return ItemData(
                      user: User,
                    );
                  });
            }

            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in', 'api/users');
    final res = await http.get(url);
    print('respuesta ${res.body}');
    return userFromJson(res.body);
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
      title: Text('${user.firstName}${user.lastName}'),
      leading: Image(image: NetworkImage(user.avatar!)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
~~~