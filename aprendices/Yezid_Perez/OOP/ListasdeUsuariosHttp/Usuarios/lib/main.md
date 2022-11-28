```
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registros de Usuarios',
      home: Scaffold(
          appBar: AppBar(title: const Text('Registros de Usuarios')),
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
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          )),
    );
  }

  Future<List<User>> getData() async {
    Uri url = Uri.https('reqres.in', 'api/users');
    final response = await http.get(url);
    print('Respuesta ${response.body}');
    if (response.statusCode == 200) {}
    return userFromJson(response.body);
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
        title: Text('${user.firstName!} ${user.lastName!}'),
        leading: Image(image: NetworkImage(user.avatar!)),
        trailing: const Icon(Icons.arrow_drop_down_sharp),
        subtitle: Text('${user.correoElectronico}'));
  }
}
```
