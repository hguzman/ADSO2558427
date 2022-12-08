```
import 'dart:convert' as convert;

class user {
  String nombre = "", avatar = "", email = "";

  user(String json) {
    final jsonResponse = convert.jsonDecode(json);
    nombre = jsonResponse["data"]["first_name"];
    avatar = jsonResponse["data"]["avatar"];
    email = jsonResponse["data"]["email"];
  }

  user.customizedUser(this.email, this.nombre, this.avatar);
}
```