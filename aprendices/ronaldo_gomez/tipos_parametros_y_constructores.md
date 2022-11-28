# tipos parametros y constructores

~~~

void main() {
  Person person = Person(nomb: "Ronaldo", sex:"Hombre");
  
  person.apellido ="Gomez";
  person.edad= 18;
  
  print("El nombre es: ${person.nombre}");
  print("El apellido es: ${person.apellido}");
  print("Sexo: ${person.sexo}");
  print("Nombre Completo: ${person.nombreCompleto()}");
  print("Edad: ${person.edad}");
  
  person.edadMas(20);
}

class Person{
  String? nombre, sexo, apellido;
  int? edad;
  
  String? nombreCompleto() {
      String noco = nombre! + apellido!;
      return noco;
  }
  
  void edadMas(int num1){
    int c = edad! + num1;
      print("La edad sumada da: $c");
  }
  
  Person({String? nomb, String? sex}){
    nombre = nomb;
    sexo = sex;
  }
    
  }

  ~~~