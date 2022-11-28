``` 
void main(){
    Person person1 = new Person(nombre1: "Ernesto ", sexo1: "Masculino");
      print(person1.sexo);
      print(person1.nombre);
      person1.apellido = "Restrepo";
      print(person1.nombreCompleto());
      person1.edad = 3;
      person1.sumaEdad(3);
}
class Person{
  String? nombre, sexo, apellido;
  int? edad;
  
  Person({String? sexo1, nombre1}){
    sexo = sexo1;
    nombre = nombre1;
  }
  
  String nombreCompleto(){
    String c = nombre! + apellido!;
    return c;
  }
  
  void sumaEdad(int sumando){
    int suma = edad! + sumando;
    print(suma);
  }
}
``` 