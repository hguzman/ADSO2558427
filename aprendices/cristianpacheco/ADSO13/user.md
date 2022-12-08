```
import 'dart:convert' as convert;

class User{
  String? nombre;
  String? apellido;
  String? avatar;
  String? email;

  User(String json){
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse['data']['first_name'];
    apellido = jsonResponse['data']['last_name'];
    avatar = jsonResponse['data']['avatar'];
    email = jsonResponse['data']['email'];
  }
}
```