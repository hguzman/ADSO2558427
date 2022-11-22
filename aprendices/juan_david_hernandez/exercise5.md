~~~
void main(){
  Person person_1 = Person(nombre:"Juan", sexo:"Macho");
  person_1.apellido = " Hernández";
  person_1.edad = 19; 
  print (person_1.nombreCompleto());
  print (person_1.edad);
  person_1.edadMas(2);
  print (person_1.sexo);
  
}
class Person { 
  String? nombre, sexo, apellido;
  int? edad;
  Person({this.nombre, this.sexo});
  
  String nombreCompleto() => '$nombre $apellido'; 
  
  void edadMas(int num){
    int j = edad! + num; 
    print('La suma de la edad es: $j');
  }
  
}
~~~
