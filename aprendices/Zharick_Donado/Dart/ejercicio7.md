### http request


### json 1 
	import 'package:http/http.dart' as http; 
	import 'dart:convert' as convert; 

	void main() async {
	  final url = Uri.https('reqres.in','api/users/3');
	  final response = await http.get(url); 

	  if (response.statusCode == 200){
	    final json = convert.jsonDecode(response.body); 
	    print(json["data"]["email"]); 
	    print(json["data"]["first_name"]); 
	    print(json["support"]["url"]); 
	  }
	  else{
	     print('problemas encontrados');  
	  } 

	}

### json 2
	import 'package:http/http.dart' as http; 
	import 'dart:convert' as convert; 

	void main() async {
	  final url = Uri.https('jsonplaceholder.typicode.com' , 'posts/4');
	  final response = await http.get(url); 

	  if (response.statusCode == 200){
	    final json = convert.jsonDecode(response.body); 
	  print(json["userId"]); 
	  print(json["id"]); 
	  print(json["title"]); 
	  print(json["body"]); 
	  }
	  else{
	     print('problemas encontrados');  
	    }
	  } 
	  