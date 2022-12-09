~~~
import 'package:mi_primer_app/models/user.dart';
import '../models/user.dart';

class Template extends StatelessWidget{
  const Template({
    Key? key,
    required this.user,
  }) : super (key:key);
  
  final User user;
  
  @Override
  Widget build (BuildContext context){
    return Column(
      children: [
        Sizedbox(height: 15.0),
        Text("Jose Argote", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          const Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              ),
          Text("andresatencio732@gmail.com"),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
  ],
          )

        ],
        
        );
      
    
}
}

~~~