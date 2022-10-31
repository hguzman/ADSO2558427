"id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  final url = Uri.https('reqres.in', 'api/users/3');
  final response = await http.get(url);
  if (response.statusCode == 200){
    final json = convert.jsonDecode(response.body);
    print(json["data"]["email"]);
    print(json["data"]["first_name"]);
    print(json["support"]["url"]);
  }else{
    print('Problemas con la petición');
  }
}