# Codigo de ejemplo FLUTTER

## Lista

Permite enviar peticiones de tipo GET a un Backend para renderizar una lista

```
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ejemplo2/models/comment_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SENA 2021'),
      ),
      body: FutureBuilder<List<Comment>>(
        future: getDatosComments(),
        builder: (BuildContext context, AsyncSnapshot<List<Comment>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<Comment> comentarios = snapshot.data;

            return construirLista(comentarios);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  ListView construirLista(List<Comment> comentarios) {
    return ListView.builder(
        itemCount: comentarios.length,
        itemBuilder: (BuildContext context, int index) {
          Comment comment = comentarios[index];
          return Column(
            children: [
              ListTile(
                title: Text(comment.email),
                leading: Icon(Icons.email),
                subtitle: Text(comment.name),
              ),
              Divider()
            ],
          );
        });
  }

  Future<List<Comment>> getDatosComments() async {
    final url = Uri.parse(
        'https://raw.githubusercontent.com/hguzman/fakeApi/main/datos.json');
    final respuesta = await http.get(url);
    // print(respuesta.body);
    if (respuesta.statusCode == 200) {
      return commentFromJson(respuesta.body);
    } else {
      return null;
    }
  }
}
```

## Custom Paint

Permite realizar diseños para apps

Dibujar CustomPaint

```
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
    // Propiedades
    lapiz.color = Environment.PrimaryColor;
    lapiz.style = PaintingStyle.fill;
    // lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 10.0;

    final path = new Path();
    // dibujar con el path y lapiz

    // path.moveTo(0, size.height * 0.7);
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
```
