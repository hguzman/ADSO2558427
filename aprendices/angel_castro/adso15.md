# MAIN
import 'package:flutter/material.dart';
import 'package:flutter_application_1/background.dart';

import 'user.dart';
import 'template.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(Miapp());
}
class Miapp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil de usuario',
      home:Scaffold(
        body: FutureBuilder<User>(
          future: getUser(),
          builder: (context, snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              User user=snapshot.data as User;
              return Stack(
                children: [
                  Background1(),
                  Template(user: user),
                  Positioned(
                    top: 70.0,
                    left: 60.0,
                    right: 60.0,
                    child:Container(
                      width: 130.0,
                      height: 100.0,
                      child: Image(image: NetworkImage(user.avatar!),
                      height: 300.0, 
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 60.0,
                    right: 60.0,
                    child: Container(
                      width: 190.0,
                      height: 150.0,
                      child: Column(
                        children: [
                          SizedBox(height: 5.0,),
                          Text(user.nombre!, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5.0),
                          Text(user.email!),
                          SizedBox(height: 5.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.blue,
                                size: 24.0,
                                semanticLabel: 'text to announce in accessibility modes',
                                ),
                                Icon(
                                  Icons.add_ic_call_rounded,
                                  color: Colors.blue,
                                  size: 30.0,
                                  ),
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 36.0,
                                    ),
                            ],
                          ),

                        ],
                        ),
                    ),
                  ),
                ]
              );
            }
            return Center(child: CircularProgressIndicator());
          },

        ),
    ),
    );
  }
}

# TEMPLATE

import 'package:flutter/material.dart';
import 'user.dart';

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
        Text('${user.nombre!} ${user.apellido}'),
        SizedBox(height: 15.0),
        Image(
          image: NetworkImage(user.avatar!),
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.email,
              color: Colors.black,
              size: 15.0),
            Text(':'),
            Text(user.email!),
          ]
        ),
      ],);
  }
}

# BACKGROUND
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

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
    lapiz.color = Color.fromARGB(255, 173, 18, 171);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 8.0;

    final path = new Path();

    path.lineTo(5, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.9, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}