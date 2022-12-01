### MAIN
~~~
import 'package:flutter/material.dart';
import 'package:appjson/user.dart';
import 'package:http/http.dart' as http;
import 'package:appjson/template.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'first app',
      home: Scaffold(
        appBar: AppBar(title: Text('Perfil'), backgroundColor: Colors.blue),
        backgroundColor: Colors.white,
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder:(context,snapshot){
            if (snapshot.connectionState == ConnectionState.done){
              List<User> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, index){
                  final user = users[index];
                  return ItemData(user : user);
                }
              );
            }
            return const Center(child:CircularProgressIndicator());
          }
        ),
      )
    );
  }
  Future<List<User>> getData() async{
    final url = Uri.https('reqres.in','/api/users');
    final response = await http.get(url);
    return userFromJson(response.body);
  }
}
~~~
### USER
~~~
import 'package:appjson/app.dart';
import 'dart:convert';

List<User> userFromJson(String str)=>List<User>.from(json.decode(str)['data'].map((x)=> User.fromJson(x)));
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

  factory User.fromJson(Map<String, dynamic> json)=> User(
    correoElectronico: json['email'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    avatar: json['avatar'],
  );
}
~~~
### TEMPLATE
~~~
import 'package:flutter/material.dart';
import 'package:appjson/user.dart';

class ItemData extends StatelessWidget {
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context){
    return Column(
      children:[
        ListTile(
          title: Text('${user.firstName!} ${user.lastName!}'),
          subtitle: Text(user.correoElectronico!),
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!),),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
        ),
        Divider(),
      ],
    );
  }
}
~~~
