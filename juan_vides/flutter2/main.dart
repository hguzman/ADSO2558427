import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/user.dart';
import 'package:new_app/widgets/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App Sena',
      home: Scaffold(
        appBar: AppBar(title: Text('Usuario')),
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<User> users = snapshot.data!;
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final user = users[index];
                    return ItemData(user: user);
                  });
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in', '/api/users');
    final res = await http.get(url);
    print('Respuesta ${res.body}');
    return userFromJson(res.body);
  }
}
