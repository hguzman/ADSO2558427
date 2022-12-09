# Wilmernicolas1700

~~~

void main(){
  
  Person personn = new Person(nombre1: "Leonel ", sexo1: "hombre");
  
  
  personn.apellido = "Carmona";
  personn.edad = 11; 
  print(personn.sexo);
  print(personn.nombre);
  print(personn.nombrecompleto());
  personn.edadmas(3);
   
  
}
class Person{
  String? nombre, sexo, apellido;
  int? edad;
    
  Person({String? sexo1, nombre1}){
    sexo = sexo1;
    nombre = nombre1;
}
  String nombrecompleto (){
    String nomC= nombre! + apellido!;
    return nomC;
    
  }
  
  
  void edadmas (int num1){
    int x = edad! + num1;
    print ( "edad sumada es: $x"); 
  }
}

~~~