### Ejercicio 2 lista de objetos de un Backend

~~~
### Main
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;
import 'widgets/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My application',
      home: Scaffold(
        appBar: AppBar(
            title: Text('Perfil de usuario'),
            backgroundColor: Colors.deepPurple[600]),
        backgroundColor: Colors.grey[400],
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              User user = snapshot.data as User;
              return Template(user: user);
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/6');
    final response = await http.get(url);
    return User(response.body);
  }
}
~~~

### User
~~~
 import 'dart:convert' as convert;

class User {
  String? nombre;
  String? avatar;
  String? email;

  User(String json) {
    final jsonResponde = convert.jsonDecode(json);
    nombre = jsonResponde["data"]["first_name"];
    avatar = jsonResponde["data"]["avatar"];
    email = jsonResponde["data"]["email"];
  }
}
~~~

### Template 
~~~
import 'package:flutter/material.dart';
import 'package:probador/models/user.dart';

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
        Text(user.nombre!, style: TextStyle(fontSize: 20.0)),
        SizedBox(height: 15.0),
        Image(
          image: NetworkImage(user.avatar!),
        ),
        SizedBox(height: 15.0),
        Text(user.email!, style: TextStyle(fontSize: 20.0)),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.person_add_alt_sharp,
                color: Colors.black,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes'),
            Icon(Icons.favorite_rounded, color: Colors.red, size: 40.0),
            Icon(Icons.insert_comment_rounded, color: Colors.black, size: 40.0),
          ],
        )
      ],
    );
  }
}
~~~
