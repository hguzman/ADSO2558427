#### Main
~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'user.dart';
import 'template.dart';

void main(){
  runApp(Profile());
}
class Profile extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Perfil',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil'), backgroundColor: Colors.black,),
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              User user = snapshot.data as User;
              return Template(user:user);
            }
            return Center(child: CircularProgressIndicator());
          },
        )
      ),
    );
  }

  Future<User> getUser() async {
    final url = Uri.https('reqres.in','/api/users/5');
    final response = await http.get(url);
      return User(response.body);
  }
}
~~~
### Template
~~~
import 'package:flutter/material.dart';
import 'user.dart';

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
        Text('${user.nombre!} ${user.apellido}, ID: ${user.id}'),
        SizedBox(height: 15.0),
        Image(
          image: NetworkImage(user.avatar!),
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.email,
              color: Colors.black,
              size: 15.0),
            Text(':'),
            Text(user.email!),
          ]
        ),
      ],
    );
  }
}
~~~
### User
~~~
import 'dart:convert' as convert;

class User{
  String? nombre;
  String? apellido;
  String? avatar;
  String? email;
  int? id;

  User(String json){
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse['data']['first_name'];
    apellido = jsonResponse['data']['last_name'];
    avatar = jsonResponse['data']['avatar'];
    email = jsonResponse['data']['email'];
    id = jsonResponse['data'][id];
  }
}
~~~
### Imagen 
[Evidencia](perfil.png)