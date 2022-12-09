~~~
import "package:flutter/material.dart";


void main(){
  runApp ( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("mi app"),
       home: Scaffold(
        appBar: AppBar(title: Text("my app") ,),
        body: Column (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          const SizedBox(height:25.0,),
        ],
        
        )
        ),
       );
     
  }
}

~~~