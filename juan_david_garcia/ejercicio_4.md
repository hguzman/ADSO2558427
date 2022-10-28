```
   void main() {
     Person person=new Person(s: "Hombre", n: "Juan");
     person.apellido=" Garcia";
     person.edad=18;
     print("el nombre es: ${person.nombre}");
     print("el sexo es: ${person.sexo}");
     print("la edad es: ${person.edad}");
     print("el nombre completo es: ${person.nombreCompleto()}");
     person.edadMas(num2: 4);
 
}
class Person{
  String? nombre,sexo,apellido;
  int? edad;
  
  Person({String? s, n}){
    sexo = s;
    nombre = n;
  }
String? nombreCompleto(){
  String no = nombre! + apellido!;
  return no;
  
}
void edadMas({int? num2}){
  int nu = edad!+ num2!;
  print(nu);
  
}

}
```
