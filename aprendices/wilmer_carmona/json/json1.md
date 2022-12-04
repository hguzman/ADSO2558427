```  

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() async {

  final url = Uri.https('reqres.in','api/users/2');
  final response = await http.get(url);

  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print("Correo electronico: ${json["data"]["email"]}");
    print("El ultimo nombre es: ${json["data"]["last_name"]}");
  } else {
    print('ERROR');
  }
}
  ```  
