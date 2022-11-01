~~~~

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('jsonplaceholder.typicode.com','posts/4');
  final response = await http.get(url);
 if (response.statusCode == 200){
   final json = convert.jsonDecode(response.body);
   print("El userId es:");
   print(json["userId"]);
   print("El titulo es:");
   print(json["title"]);
   print("El body es:");
   print(json["body"]);
 }
 else{
   print('Problemas con la peticion');
   print(response.statusCode);
 }
}

~~~~