```
    void main() {
  Person person = new Person(nom: "Cesar", sex:"Hombre");
  
  person.apellido ="Lopez";
  person.edad= 19;
  print("Sexo: ${person.sexo}");
  print("Nombre Completo: ${person.nombreCompleto()}");
  person.edadMas(3);
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
  
  Person({String? nom, String? sex}){
    nombre = nom;
    sexo = sex;
  }
    
  }
```