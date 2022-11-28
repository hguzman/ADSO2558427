~~~
import 'dart:convert' as convert;

  import 'package:http/http.dart' as http;

void main() async {
    final tr = Uri.https('reqres.in','/api/users/3');
    final response = await http.get(tr);
  
  if (response.statusCode == 200){ 
    final json = convert.jsonDecode(response.body);
    print(json["data"]["id"]);
    print(json["data"][ "email"]);
    print(json["data"]["first_name"]);
  }else { 
  
  print('por favor intentar mas tarde');
  }  
          
    
  }
  ~~~
...
~~~
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
~~~