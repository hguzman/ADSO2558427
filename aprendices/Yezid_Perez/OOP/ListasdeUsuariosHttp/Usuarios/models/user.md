```
import 'dart:convert';
import 'package:listas_de_usuarios_example/main.dart';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str)['data'].map((x) => User.fromJson(x)));

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

  factory User.fromJson(Map<String, dynamic> json) => User(
        correoElectronico: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );
}
```