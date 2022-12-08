<h2 align="center">Codigo principal</h2>

```
import 'package:flutter/material.dart';
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
        appBar: AppBar(title: Text('Datos'), backgroundColor: Colors.red,),
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
```
