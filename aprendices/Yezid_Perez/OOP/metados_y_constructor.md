```
void main(){
  
  Person person =  Person(nomb: "Git", sex:"Hombre");
  
  person. apellido = "Copilot";
  person. edad = 24;
  print("El nombre es: ${person.nombre}");
  print("El apellido es: ${person.apellido}");
  print("El sexo es: ${person.sexo}");
  print("El nombre completo es: ${person.nombrecompleto()}");
  print("La edad es: ${person.edad}");
  person.edadmas(20);
  }
  
  class Person{
    
    String? nombre, sexo, apellido;
    int? edad;
    String? nombrecompleto(){
      
    String? nombrecompleto = nombre! + apellido!;
    return nombrecompleto;
    }
void edadmas(int num1){
    
    int a = edad! + num1;
      print("La edad sumada es: $a");
  }
    Person({String? nomb, String? sex}){
    nombre = nomb;
    sexo = sex;     
  }  
 }
```