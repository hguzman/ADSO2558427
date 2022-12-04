## peticiones get para usuarios

~~~
import 'package:flutter/material.
dart';
import 'package:hojavida/widgets/template.dart';
import 'package:http/http.dart' as http;
import 'model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Contactos',
      home: Scaffold( 
        appBar: AppBar(title: Text('Datos'), backgroundColor: Colors.blue,),
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Template(user: user);
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in', '/api/users/4');
    final response = await http.get(url);
    return User(response.body);
  }
}

~~~

## user

~~~
import 'dart:convert' as convert;

class User{
  String? nombre;
  String? avatar;
  String? email;

  User(String json){
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];

  }
}

~~~


## widget

~~~
import 'package:flutter/material.dart';
import 'package:hojavida/model/user.dart';


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
        SizedBox(height: 5.0),
        Text(user.nombre!,style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), ),
        SizedBox(height: 9.0,),
        Image(
          image: NetworkImage(user.avatar!),
          height: 300.0,
        ),
        SizedBox(height: 5.0,),
        Text(user.email!),
        SizedBox(height: 5.0,),
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.mail,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
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
      ]
    );
  }
}

~~~