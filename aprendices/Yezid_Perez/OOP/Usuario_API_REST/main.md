```
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sena_example/models/user.dart';
import 'widget/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my app',
      home: Scaffold(
          appBar: AppBar(title: Text('my app')),
          body: FutureBuilder(
            future: getUser(),
            builder: (context, snapsdata) {
              //var snapshot;
              if (snapsdata.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }

              if (snapsdata.hasError || snapsdata.data == null) {
                print("Retornar pantalla de error");

                user defaultUser = user.customizedUser(
                    "defaultEmail@gmail.com",
                    "nombre default",
                    'https://avatars.githubusercontent.com/u/109951?s=400&v=');

                return Template(userA: defaultUser);
              } else {
                print((snapsdata.data as user).nombre);
                print("sanpshot");
                return Template(userA: snapsdata.data as user);
              }
            },
          )),
    );
  }

  Future<user?> getUser() async {
    Uri url = Uri.https('reqres.in', 'api/users/10');
    final http.Response response = await http.get(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        });
    if (response.statusCode == 200) {
      return user(response.body);
    }
    return null;
  }
}
```
