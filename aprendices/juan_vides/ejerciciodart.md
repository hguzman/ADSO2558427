```
void main() {
  Person persona = new Person (n: "Juan", s: "Hombre");
  
  persona.apellido = " Vides";
  persona.edad = 17;
  print ( "El nombre es: ${persona.nombre}");
  print ("El sexo es: ${persona.sexo}");
  print ("El apellido es:${persona.apellido}");
  print ("La edad es: ${persona.edad}");
  print ("El nombre completo es: ${persona.nombreCompleto()}");
  persona.edadMas(3);
  
}

class Person {
  String? nombre, sexo, apellido;
  int? edad;
  
  Person({String? n, s}){
    nombre = n;
    sexo = s;
  
  }
  
  String nombreCompleto (){
    String nom = nombre! + apellido!;
    return nom;
  }
  void edadMas(int? e2){
    int nume = edad! + e2!;  
    print ("La edad sumada seria: ${nume}");
  }
  
}
```