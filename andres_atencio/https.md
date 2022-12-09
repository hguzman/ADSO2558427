~~~
import 'dart:convert' as convert;
import 'package:http/http.dart' as https;
 
void main() async {
     final url = Uri.https('regres.in','api/users/3');
     final response = await https.get(url);
   if (response.statusCode == 200){
     final json = convert.jsonDecode(response.body);
     print(json['data']['email']);
      print(json['data']['first_name']);
      print(json['support']['url']);
    
     }else{
     print('problemas con la peticion');
   }
  
}
~~~

