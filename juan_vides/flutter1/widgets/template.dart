import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sena/models/user.dart';

class Template extends StatelessWidget {
  const Template({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.0),
        Text(
          user.nombre!,
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(height: 15.0),
        Image(
          image: NetworkImage(user.avatar!),
        ),
        SizedBox(height: 15.0),
        Text(user.email!),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 4, 100, 180),
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Color.fromARGB(255, 29, 228, 36),
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Color.fromARGB(255, 208, 27, 14),
              size: 36.0,
            )
          ],
        )
      ],
    );
  }
}
