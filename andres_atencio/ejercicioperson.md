~~~
 void main() {
     Person person=new Person(s: "Hombre", p: "andres");
     person.apellido=" atencio";
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
  
  Person({String? s, p}){
    sexo = s;
    nombre = p;
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