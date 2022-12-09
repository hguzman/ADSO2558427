# MAIN 

```  
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/user.dart';


void main() => runApp(My_App());

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: FutureBuilder<User>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  User user = snapshot.data!;
                  return Template(user: user);
                }
                return const Center(child: CircularProgressIndicator());
              })),
    );
  }
}

class Template extends StatelessWidget {
  final User user;
  const Template({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Registro de Usuarios",
      home: Scaffold(
        body: Stack(
          children: [
            Forma1(),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 80.0),
                  Text("${user.data!.firstName!} ${user.data!.lastName!}",
                      style: const TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10.0),
                  Text(user.data!.email!,
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white)),
                  const SizedBox(height: 140.0),
                  CircleAvatar(
                      backgroundImage: NetworkImage(user.data!.avatar!),
                      radius: 100.0),
                  const SizedBox(height: 20.0),
                  Text("ID de usuario: ${user.data!.id!.toString()}",
                      style: const TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 87, 35, 100),
                          fontWeight: FontWeight.w800)),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 40.0,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.tiktok,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      Icon(Icons.snapchat,
                          size: 40.0, color: Color.fromARGB(255, 238, 255, 0))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<User> getData() async {
  final url = Uri.https('reqres.in', '/api/users/2');
  final res = await http.get(url);
  return userFromJson(res.body);
}



class Forma1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: Pincel(),
      ),
    );
  }
}

class Pincel extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Color.fromARGB(255, 87, 35, 100);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    final path = Path();
    path.lineTo(0, size.height * 0.49);
    path.lineTo(size.width, size.height * 0.49);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

```  

# USER

```  
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.data,
    this.support,
  });

  Data? data;
  Support? support;

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: Data.fromJson(json["data"]),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "support": support!.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}

```  