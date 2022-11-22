```
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async{
  
  final url = Uri.https('jsonplaceholder.typicode.com','/posts/4');
  final response = await http.get(url);
  
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print('Título: ${json['title']}');
    print('Cuerpo: ${json['body']}');
    }
  }
  ```