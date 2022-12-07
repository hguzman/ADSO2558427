~~~
import 'dart:convert' as convert;

  import 'package:http/http.dart' as http;

void main() async {
    final tr = Uri.https('reqres.in','/api/users/2');
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