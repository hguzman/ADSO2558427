# MAIN
``` 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/user.dart';
import 'package:flutter_application_1/widgets/Template.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'User',
      home: Scaffold( 
        appBar: AppBar(title: Text('User'), backgroundColor: Color.fromARGB(255, 30, 112, 234),),
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
    final url = Uri.https('reqres.in', '/api/users/2');
    final response = await http.get(url);
    return User(response.body);
  }
}
``` 
# TEMPLATE
``` 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/user.dart';


class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0,),
        Text(user.nombre!, style: TextStyle(fontSize: 25.0),),
        SizedBox(height: 15.0,),
        Image(
          image: NetworkImage(user.avatar!),),
        SizedBox(height: 15.0,),
        Text(user.email!, style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.pink,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Color.fromARGB(255, 131, 33, 243),
              size: 36.0,
            )
           ],)
          ],);
}
}
``` 
# USER
``` 
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
``` 