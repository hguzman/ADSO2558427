### EJERCICIO STACK Y POSITIONS

### MAIN
import 'package:flutter/material.dart';
import 'package:paint/widgets/Template.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MyApp());
}
  class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My application',
        home: Scaffold(
          body: FutureBuilder<User>(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done){
                User user = snapshot.data as User;
                return Template(user:user);
        }
        return Center(child: CircularProgressIndicator());

      },

    ),

  ),
  );
    }
      Future<User> getUser() async {
        final url = Uri.https('reqres.in', '/api/users/7');
        final response = await http.get(url);
          return User(response.body); 
        }
    }


### USER

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

### TEMPLATE
~~~
import 'package:flutter/material.dart';
import 'package:paint/models/user.dart';
import 'package:paint/main.dart';
import 'background.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background1(),
        Positioned(
          top: 135.0,
          left: 350.0,
          child: Container(
            height: 200.0,
            width: 350,
            child: Column(
              children: [Image(image: NetworkImage(user.avatar!, scale: 0.8))],
            ),
          ),
        ),
        Positioned(
          bottom: 40.0,
          left: 350.0,
          child: Container(
            height: 150.0,
            width: 350,
            child: Column(
              children: [
                Text(
                  user.nombre!,
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(user.email!, style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 17, 192, 142),
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Icon(
                      Icons.add_call,
                      color: Color.fromARGB(255, 17, 192, 177),
                      size: 30.0,
                    ),
                    Icon(
                      Icons.add_reaction,
                      color: Color.fromARGB(255, 17, 192, 55),
                      size: 30.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
~~~

### Background color (custom paint)
~~~
import 'package:flutter/material.dart';
import 'package:paint/main.dart';
class Background1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderLoginPainter(),
      ),
    );
  }
}
class _HeaderLoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color.fromARGB(255, 17, 192, 20);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;
    final path = new Path();
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.8, size.width * 1, size.height * 0.4);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
~~~

