~~~
void main(){
  Person person_1 = Person(n:"Juan", s:"Macho");
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
  Person({String? n, String? s}){
    nombre = n; 
    sexo = s;
  }
  String nombreCompleto(){ 
    String nc = nombre! + apellido!; 
    return nc; 
  }
  void edadMas(int num){
    int j = edad! + num; 
    print('La suma de la edad es: $j');
  }
  
}
~~~
