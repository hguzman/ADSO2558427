~~~
void main(){
  Person person = Person(n: "Tatiana", s: "F");
   
    person.apellido = " Torres";
    person.edad = 18;
    print('El nombre es: ${person.nombre}');
    print('El apellido es:${person.apellido}');
    print('El sexo es: ${person.sexo}');
    print('El nombre completo es: ${person.nombreCompleto()}');
    print('La edad es: ${person.edad}');
    person.edadMas(10);
} 
class Person{
  String? nombre, sexo, apellido;
  int? edad;
  
  Person ({String? n, String? s}){
    sexo = s;
    nombre = n;
  }
  String nombreCompleto(){
    String nC = nombre! + apellido!;
    return nC;
  }
  void edadMas(int eM){
    int i = edad! + eM;
    print('La edad sumada es: $i');
  }
    
}
~~~
