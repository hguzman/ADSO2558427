## Tipos de parametros y constructores

~~~

void main() {
  Person person = new Person(n: "Luis", s:"Hombre");
  
  person.apellido ="Lemus";
  person.edad= 17;
  print("El nombre es: ${person.nombre}");
  print("El apellido es: ${person.apellido}");
  print("Sexo: ${person.sexo}");
  print("Nombre Completo: ${person.nombreCompleto()}");
  print("Edad: ${person.edad}");
  person.edadMas(4);
}

class Person{
  String? nombre, sexo, apellido;
  int? edad;
  
  String? nombreCompleto() {
      String nc = nombre! + apellido!;
      return nc;
  }
  
  void edadMas(int num1){
    int a = edad! + num1;
      print("La edad sumada es: $a");
  }
  
  Person({String? n, String? s}){
    nombre = n;
    sexo = s;
  }
    
  }


~~~
