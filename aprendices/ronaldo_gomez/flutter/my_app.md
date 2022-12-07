# MyApp

### main
~~~
import 'package:flutter/material.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;
import 'widgets/template.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mi App Sena',
      home: Scaffold(
        appBar: AppBar(title: Text('my app'), backgroundColor: Color.fromARGB(255, 62, 12, 12),),
        body: FutureBuilder<User>(
            future: getUser(),
            builder:(context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done){
                User user = snapshot.data as User;
                return Template (user: user);
              }
              return Center(child:CircularProgressIndicator());
            },
      )
    ),
    );
  }

    Future<User> getUser() async {
      final url = Uri.https('reqres.in','/api/users/10');
      final response = await http.get(url);
      return User(response.body);
  }

}
~~~

### template

~~~
import 'package:flutter/material.dart';

import '../models/user.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,

  }) :super(key: key);

  final User user;
  
    @override
    Widget build(BuildContext context){
    return Column(
          children: [
          SizedBox(height: 5.0),
          Text(user.nombre! ,style: TextStyle(fontSize: 20.0),),
          SizedBox(height: 5.0),
              Image(
                image: NetworkImage(user.avatar!,scale: 1.0),
              ),
              SizedBox(height: 5.0),
              Text(user.email!, style: TextStyle(fontSize: 20.0),),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 4, 100, 180),
                  size: 30.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Icon(
                  Icons.audiotrack,
                  color: Color.fromARGB(255, 29, 228, 36),
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Color.fromARGB(255, 208, 27, 14),
                  size: 30.0,
                ),
              ],
            )
        ],
      );
  }
}
~~~

### user

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

### widget

~~~
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

~~~