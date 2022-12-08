<h2 align="center">Json, mapa, lista y asincronismo</h2>

<h3 align="center">Ejemplo del instructor</h3>

```
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('reqres.in', 'api/users/3');
  final response = await http.get(url);
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print(json["data"]["email"]);
    print(json["data"]["first_name"]);
    print(json["support"]["url"]);
  }else{
    print('Problemas con la petición');
  }
}
```

<h3 align="center">Desarrollo de la Json fake</h3>

```
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('jsonplaceholder.typicode.com', '/posts/4');
  final response = await http.get(url);
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print(json["userId"]);
    print(json["id"]);
    print(json["title"]);
  }else{
    print('Problemas con la petición');
  }
}
```