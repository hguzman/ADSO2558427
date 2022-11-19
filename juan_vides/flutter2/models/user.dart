import 'dart:convert';
import 'package:new_app/main.dart';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str)["data"].map((x) => User.fromJson(x)));

class User {
  User({this.email, this.firstName, this.lastName, this.avatar});

  String? firstName;
  String? lastName;
  String? avatar;
  String? email;

  factory User.fromJson(Map<String, dynamic> json) => User(
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
      email: json["email"]);
}
