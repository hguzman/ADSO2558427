```
void main(){
  Person person = new Person (n: 'andrea ', s: 'femenino');
  person.apellido = 'guitierrez';
  person.edad = 19;
  print('El nombre completo es: ${person.nombreCompleto()}');
  person.edadMas(20);
}
class Person{
  String? nombre, apellido, sexo;
  int? edad;
  Person({String? n, String? s}){
    nombre = n; 
    sexo = s; 
   }
  String nombreCompleto(){
    String nc = nombre! + apellido!;
    return nc;
   }
  void edadMas(int? edm){
    int num = edad! + edm!;
    print('La edad sumada es: $num');
  }
}
```