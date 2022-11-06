
# Json, mapa, lista y asincronismo
# posts 4
~~~
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('jsonplaceholder.typicode.com','/posts/4');
  final response = await http.get(url);
  
if (response.statusCode == 200){
  final json = convert.jsonDecode(response.body);
  print(json["userId"]);
  print("");
  print(json["id"]);
  print("");
  print(json["title"]);
  print("");
  print(json["body"]);
  
}else{
  print('problemas con la petición');
}
  
}
~~~
# users 2
~~~
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('reqres.in','api/users/2');
  final response = await http.get(url);
  
if (response.statusCode == 200){
  final json = convert.jsonDecode(response.body);
  print(json["data"]["email"]);
  print("");
  print(json["data"]["first_name"]);
  print("");
  print(json["data"]["id"]);
  print("");
  print(json["data"]["last_name"]);
  print("");
  print(json["data"]["avatar"]);

}else{
  print('problemas con la petición');
}
 
}
~~~