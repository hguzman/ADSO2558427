<h2 align="center">Clase user</h2>

```
import 'dart:convert' as convert;

class User{
  String? nombre;
  String? avatar;
  String? email;

  User(String json){
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];

  }
}
```