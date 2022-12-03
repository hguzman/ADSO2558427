````
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async{
  
  final url = Uri.https('reqres.in','api/users/2');
  final response = await http.get(url);
  
  if (response.statusCode == 200){
    
    final json = convert.jsonDecode(response.body);
    print("Correo eléctronico: ${json["data"]["email"]}");
    print("ID: ${json["data"]["id"]}");
    
  } else {
    
    print("Ha ocurrido un error");
  }
}
````