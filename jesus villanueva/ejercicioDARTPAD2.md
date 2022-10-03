``` 
void main() {
  Person p = new Person(n: "jesus",s: "masculino");
  
  p.edad = 10;
 
  p.apellido = "villanueva";
  print("el nombre es: ${p.nombre}");
  print("el sexo es: ${p.sexo}");
  print("la edad es: ${p.edad}");
  print("el nombre completo es: ${p.nombrecompleto()}");
  p.edadMas(8);
}

class Person{
  // atributos
  String? nombre, sexo, apellido;
  int? edad;
  // metodos
  Person({String? s, n}){
    sexo = s;
    nombre = n;
   
  }
  String? nombrecompleto(){
    String nom = nombre! + apellido!;
    return nom;
  }
   
    
  void edadMas(int? e2){
    int t = edad! + e2!;
    print("la edad sumada es:${t}");
  }
  }
  ``` 