# Ejercicio número 2 en Dart

~~~
void main() {
  Person person = new Person(nom: "Pablo", sex: "Masculino");
  person.apellido = "Ramos";
  person.edad = 23;
  print ('El sexo es ${person.sexo}');
  print('El nombre completo es ${person.nombrecompleto()}');
  person.edadMas('Edad final' + num2: 3);
}

class Person {
  String? nombre, sexo, apellido;
  int? edad;
  
Person ({String? nom, String? sex}){
  nombre = nom;
  sexo = sex;
  
 }
 String? nombrecompleto(){
    String r = nombre! + ' ' + apellido!;
    return r;
        }
  void edadMas({int? num2}){
    int eda = edad! + num2!; 
    print('${eda}');
  }
}
~~~