## lista flutter

~~~
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ejemplo2/models/comment_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SENA 2023'),
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
~~~