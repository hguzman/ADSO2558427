# MAIN
``` 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';
import 'package:http/http.dart' as http;
import 'Template.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lista',
      home: Scaffold(
	      appBar: AppBar(title: Text('lista de usuarios', style: TextStyle(color: Colors.black)), backgroundColor: Colors.white),
	      backgroundColor: Colors.black,
	      body: FutureBuilder<List<User>>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<User> users = snapshot.data!;
                return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, index) {
                      final user = users[index];
                      return ItemData(user: user);
                    });
	    }
	    return Center(child: CircularProgressIndicator());
	  },
	),
      )
    );
  }
  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in', '/api/users');
    final response = await http.get(url);
    return userFromJson(response.body);
  }
}
``` 
# TEMPLATE
``` 
import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';

class ItemData extends StatelessWidget {
  const ItemData({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('${user.firstName!} ${user.lastName!}', style: TextStyle(color: Colors.white)),
          subtitle: Text(user.correoElectrnico!, style: TextStyle(color: Colors.white)),
          leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!),),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue,),
        ),
        Divider(),
      ],
    );
  }
}
``` 
# USER

import 'dart:convert';
``` 
List<User> userFromJson(String str) => List<User>.from(json.decode(str)['data'].map((x) => User.fromJson(x)));
class User {
  User({
    this.correoElectrnico,
    this.firstName,
    this.lastName,
    this.avatar,
  });
  String? correoElectrnico;
  String? firstName;
  String? lastName;
  String? avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
    correoElectrnico: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );
}
``` 