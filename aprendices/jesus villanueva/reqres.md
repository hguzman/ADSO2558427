### PRIMER EJERCICIO
``` 

import 'package:http/http.dart' as https;
import 'dart:convert' as convert;
void main() async {
   final url = Uri.https("reqres.in","api/users/3");
   final response = await https.get(url);
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print(json["data"]["email"]);
    print(json["data"]["first_email"]);
    print(json["support"]["url"]);

    
    
  } else{
    print("problemas con la peticion");
  }
  
}
``` 
### SEGUNDO EJERCICIO
``` 
import 'package:http/http.dart' as https;
import 'dart:convert' as convert;
void main() async {
 final url = Uri.https("jsonplaceholder.typicode.com","/posts/4");
   final response = await https.get(url);
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print(json["userId"]);
    print(json["id"]);
    print(json["title"]);
    print(json["body"]);
    
 }else{
    print("problemas con la peticion");
  }
  
  
}
``` 
    