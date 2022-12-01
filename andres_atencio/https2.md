~~~
import 'dart:convert' as convert;
import 'package:http/http.dart' as https;
 
void main() async {
     final url = Uri.https('jsonplaceholder.typicode.com','/posts/4');
     final response = await https.get(url);
   if (response.statusCode == 200){
     final json = convert.jsonDecode(response.body);
     print(json['"userid"']);
      print(json['id']);
      print(json['title']);
    
     }else{
     print('problemas con la peticion');
   }
  
}
~~~