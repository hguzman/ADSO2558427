~~~
import 'package:flutter/material.dart';

void main () => runApp( MyApp());


class MyApp extends StatelessWidget {

@override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title:'mi app sena',
      home: Scaffold(
        appBar: AppBar(title: Text ('titulo de la ventana')),
      body: Column(
        children: [
          SizedBox(height: 15.0,),
          Text('andres mendoza', style: TextStyle(fontSize:25.0),),
           SizedBox( height:15.0),
            const Image(
            image: NetworkImage( const Image(
  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
))
            )
    )
           



        ],
      ),
      
      )
    )
    ~~~