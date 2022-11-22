import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Q onda',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Chats'),
          ),
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
          )),
    );
  }

  Future<List<User>> getData() async {
    final url = Uri.https('reqres.in', '/api/users');
    final response = await http.get(url);
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
      subtitle: Text(''),
      leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar!)),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}