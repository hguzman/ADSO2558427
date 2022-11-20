```
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('reqres.in','api/users/10');
  final response = await http.get(url);
 if(response.statusCode == 200){
   final json = convert.jsonDecode(response.body);
   print(json["data"]["first_name"]);
   print(json["data"]["id"]);
 }else{
   print('ocurrio un problema con la peticion');
 }
}
```
```
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('jsonplaceholder.typicode.com','posts/4');
  final response = await http.get(url);
 if (response.statusCode == 200){
   final json = convert.jsonDecode(response.body);
   print(json["userId"]);
   print(json["title"]);
   print(json["body"]);
 }else{
   print('se ha encontrado problemas');
 }
}
```